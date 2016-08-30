<?php
namespace Home\Controller;
use Common\Controller\CommonController;
class SafeController extends HomeController {
 	public function _initialize(){
 		parent::_initialize();
 	}
	//空操作
	public function _empty(){
		header("HTTP/1.0 404 Not Found");
		$this->display('Public:404');
	}
	public function index(){
        $u_info = M('Member')->where("member_id = {$_SESSION['USER_KEY_ID']}")->find();


        $this->assign('u_info',$u_info);
		$this->assign('empty','暂无数据');
        $this->display();
     }
	 public function mobilebind(){
		
		$this->assign('empty','暂无数据');
        $this->display();
     }

	//购买麒麟币
	public function goumai(){

		$this->display();
	}

	/**
	 * 麒麟币购买
	 */
	public function admRecharge(){
		if(IS_POST){
			$admin=M("Admin")->where("admin_id='{$_SESSION['admin_userid']}'")->find();
			if(empty($_POST['password'])){
				$this->error("请输入管理员密码");
			}
			if(md5($_POST['password'])!=$admin['password']){
				$this->error("您输入的管理员密码错误");
			}
			if(empty($_POST['member_id'])){
				$this->error('请输入充值人员');
			}
			if(!isset($_POST['currency_id'])){
				$this->error('请输入币种');
			}
			if(empty($_POST['money'])){
				$this->error('请输入充值金额');
			}
			$data['member_id'] = I('member_id','','intval');
			$member=M('Member')->where('member_id='.$data['member_id'])->find();
			if(!$member){
				$this->error('用户不存在');
			}
			$data['member_name'] = $member['name'];
			$data['currency_id'] = I('currency_id','','intval');
			$data['money'] = I('money');
			$data['status'] = 1;
			$data['add_time']  = time();
			$data['type'] = 3;//管理员充值类型
			M()->startTrans();//开启事务
			$r[] = M('Pay')->add($data);
			if($data['currency_id']==0){
				$r[] = M('Member')->where(array('member_id'=>$data['member_id']))->setInc('rmb',$data['money']);
			}else{
				$r[] = M('Currency_user')->where(array('member_id'=>$data['member_id'],array('currency_id'=>$data['currency_id'])))->setInc('num',$data['money']);
			}
			$r[] = $this->addFinance($data['member_id'], 3, "管理员充值", $data['money'], 1, $data['currency_id']);
			$r[] = $this->addMessage_all($data['member_id'], -2, "管理员充值", "管理员充值".getCurrencynameByCurrency($data['currency_id']).":".$data['money']);
			if(!in_array(false,$r)){
				M()->commit();
				$this->success('添加成功');

			}else{
				M()->rollback();
				$this->error('添加失败');
			}
		}else{
			$type_id=I('type_id');
			$email=I('email');
			$member_id=I('member_id');
			if(!empty($type_id)){
				$where['type']=$type_id;
			}
			if(!empty($email)){
				$uid=M('Member')->where("email like '%{$email}%'")->find();
				$where["member_id"]=$uid['member_id'];
			}
			if(!empty($member_id)){
				$where["member_id"]=$member_id;
			}
			$where['type']=3;
			$count =  M('pay')->where($where)->count();// 查询满足要求的总记录数
			$Page  = new \Think\Page($count,10);// 实例化分页类 传入总记录数和每页显示的记录数(25)
			//给分页传参数
			setPageParameter($Page, array('type_id'=>$type_id,'email'=>$email,'member_id'=>$member_id));

			$show       = $Page->show();// 分页显示输出

			$list= M('Pay')->where($where)->limit($Page->firstRow.','.$Page->listRows)->order('add_time desc')->select();
			//筛选
			$type=M('Finance_type')->select();
			$this->assign('type',$type);
			$this->assign('page',$show);
			$this->assign('list',$list);
			$this->display();
		}
	}


}