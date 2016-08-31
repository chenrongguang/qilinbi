<?php
namespace Home\Controller;

use Common\Controller\CommonController;

class SafeController extends HomeController
{
    public function _initialize()
    {
        parent::_initialize();
    }

    //空操作
    public function _empty()
    {
        header("HTTP/1.0 404 Not Found");
        $this->display('Public:404');
    }

    public function index()
    {
        $u_info = M('Member')->where("member_id = {$_SESSION['USER_KEY_ID']}")->find();


        $this->assign('u_info', $u_info);
        $this->assign('empty', '暂无数据');
        $this->display();
    }

    public function mobilebind()
    {

        $this->assign('empty', '暂无数据');
        $this->display();
    }

    //购买麒麟币
    public function goumai()
    {

        $this->display();
    }

    /**
     * 麒麟币购买
     */
    public function goumaiDO()
    {
        if(!$this->checkLogin()){
            $data['status']=-7;
            $data['info']='请先登录再进行此操作';
            $this->ajaxReturn($data);
        }

        if (!isset($_POST['currency_id'])) {
            $returndata['status'] = -1;
            $returndata['info'] = '请输入币种';
            $this->ajaxReturn($returndata);
        }
        if (empty($_POST['buy_count'])) {
            $returndata['status'] = -2;
            $returndata['info'] = '请输入购买数量';
            $this->ajaxReturn($returndata);
        }
        $data['member_id'] = $_SESSION['USER_KEY_ID'];
        $member = M('Member')->where('member_id=' . $data['member_id'])->find();
        if (!$member) {
            $this->error('用户不存在');
        }

        $currency=$this->getCurrencyByCurrencyId(I('currency_id', '', 'intval'));
        //检查是否开启交易
        if ($currency['is_lock']){
            $msg['status']=-3;
            $msg['info']='该币种暂时不能交易';
            $this->ajaxReturn($msg);
        }

        $price= $currency['set_price'];
        if(empty($price)||$price==0 ){
            $msg['status']=-4;
            $msg['info']='该币种价格为0不能购买';
            $this->ajaxReturn($msg);
        }

        $money=I('buy_count', '', 'intval')*$price;

        $money_remain=$this->getUserMoney('', 'num');

        if($money>$money_remain){
            $msg['status']=-6;
            $msg['info']='余额不足';
            $this->ajaxReturn($msg);
        }

        $data['member_name'] = $member['name'];
        $data['currency_id'] = I('currency_id', '', 'intval');
        $data['money'] = $money;
        $data['status'] = 1;
        $data['add_time'] = time();
        //$data['type'] = 3;//管理员充值类型
        $data['type'] = 4;//会员自助购买
        M()->startTrans();//开启事务

        //这个地方不应该记录到充值里边啊
        //$r[] = M('Pay')->add($data);

        //扣掉人民币
        $r[] = M('Member')->where(array('member_id'=>$data['member_id']))->setDec('rmb',$data['money']);

        //新增购买的货币数量
        $r[] = M('Currency_user')->where(array('member_id'=>$data['member_id'],array('currency_id'=>$data['currency_id'])))->setInc('num',I('buy_count', '', 'intval'));

        //添加记录到账务明细
        $r[] = $this->addFinance($data['member_id'], 24, "会员自助购买", $data['money'], 2, 0);//消耗人民币
        //$r[] = $this->addFinance($data['member_id'], 24, "会员自助购买", I('buy_count', '', 'intval'), 1, $data['currency_id']);//获得购买的币种

        //发送消息,先去掉吧
        //$r[] = $this->addMessage_all($data['member_id'], -2, "会员自助购买", "会员自助购买" . getCurrencynameByCurrency($data['currency_id']) . ":" . $data['money']);

        if (!in_array(false, $r)) {
            M()->commit();
            $returndata['status'] = 1;
            $returndata['info'] = '购买成功';
            $this->ajaxReturn($returndata);

        } else {
            M()->rollback();
            $returndata['status'] = -5;
            $returndata['info'] = '购买失败';
            $this->ajaxReturn($returndata);
        }

    }

    public  function  getgoumai(){
        if(!$this->checkLogin()){
            $data['status']=-1;
            $data['info']='请先登录再进行此操作';
            $this->ajaxReturn($data);
        }

        //获取设置的价格
        //获取当前剩余数量，以及该用于余额可购买的最大数量，取一个最小值
        //获取币种信息
        $currency_id=I('post.currency_id');
        $currency=$this->getCurrencyByCurrencyId($currency_id);
        //检查是否开启交易
        if ($currency['is_lock']){
            $msg['status']=-2;
            $msg['info']='该币种暂时不能交易';
            $this->ajaxReturn($msg);
        }

        $price= $currency['set_price'];
        if(empty($price)||$price==0 ){
            $msg['status']=-3;
            $msg['info']='该币种价格为0不能购买';
            $this->ajaxReturn($msg);
        }
        $currency_total=$currency['currency_all_num'];//发行总数
        $money=$this->getUserMoney('', 'num');
        $temp_count=(int)$money/$price;//取整数
        $max_count=min($currency_total,$temp_count);

        $data['status']=1;
        $data['info']='成功获取';
        $data['price']=$price;
        $data['max_count']=$max_count;
        $this->ajaxReturn($data);

    }
}