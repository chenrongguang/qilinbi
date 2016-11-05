<?php
namespace Cli\Controller;

use Think\Controller;

class TaskController extends Controller
{
    protected $model;
    protected $mocel_currency_user;

    //强制拆分任务
    public function  task_split()
    {
        $this->model = M('currency_split');

        $where['status'] = 0;
        $result = $this->model->where($where)->select();
        if ($result == false || $result == null) {
            exit('任务结束-没有需要处理的任务');
        }

        //先把需要处理的状态都更新为处理中，防止其他任务进来处理
        $data['status'] = 1;
        $this->model->where($where)->save($data);

        foreach ($result as $k => $v) {
            $currency_id = $v['currency_id'];
            //获取拥有该货币的会员
            $where_currcny_user['currency_id'] = $currency_id;
            $where_currcny_user['status'] = 0;//这里好像没用
            $this->mocel_currency_user = M('currency_user');
            $result_currency_user = $this->mocel_currency_user
                ->where($where_currcny_user)
                ->select();
            //如果没找到会员有该货币，则跳过
            if ($result_currency_user == false || $result_currency_user == null) {
                continue;
            }

            //循环每个会员
            foreach ($result_currency_user as $val_user) {
                $member_id = $val_user['member_id'];//会员id
                $member_total_money = $this->split_member_total_money($v, $val_user);//该会员能分得的总钱数，这里还没算其能获得的比例
                $member_get = $v['member_get'];//会员获得的比例
                $member_get_money = $member_total_money * $member_get;//会员最终得到钱
                //$handle_result = $this->handle_finance_common($member_id, $member_get_money, 25, '系统拆分获得');//处理财务数据,人民币

                //该会员拆分的数量
                $num = $val_user[num];//该会员拥有的该币种的数量
                $mult = $v['mult'];//拆分翻N倍
                $total=$num*$mult;
                $handle_result = $this->handle_finance_split($member_id, $member_get_money, 25, '系统拆分获得',$total,$currency_id);//处理财务，增加人民币，同时拆分之后要增加货币剩余数量 2016-11-05
                //如果成功了，处理上级的返佣
                if ($handle_result) {
                    $this->hanle_level_money($v, $member_id, $member_total_money, 25, '系统拆分获得');
                }
            }

            //将该任务更新为已完成
            $finish_data['status'] = 2;
            $finish_data['finish_time'] = time();
            $finish_where['id'] = $v['id'];
            $this->model->where($finish_where)->save($finish_data);

        }

        exit('任务结束');
    }

    //处理上级推荐人返佣的问题
    private function  hanle_level_money($v_result, $member_id, $member_total_money, $type, $typetitle)
    {
        $level_member_id = $member_id;

        $where_level['member_id'] = $level_member_id;
        $where_level['pid'] = array('GT', 0);
        //$where_level['is_lock']=0;
        //$where_level['status']=array('NEQ',2);//不等于2

        //一级返佣
        $result_member = M('member')->where($where_level)->field('pid')->find();
        //找不到上级就返回
        if ($result_member == false || $result_member == null || empty($result_member['pid'])) {
            return;
        }
        $level1_get = $v_result['level1_get'];
        $money = $member_total_money * $level1_get;
        $level_member_id = $result_member['pid'];//将上级的id附进来
        $handle_result = $this->handle_finance_common($level_member_id, $money, $type, $typetitle);//处理财务数据
        //如果失败则返回
        if (!$handle_result) {
            return;
        }
        //继续处理
        //二级返佣
        $where_level['member_id'] = $level_member_id;
        $where_level['pid'] = array('GT', 0);
        $result_member = M('member')->where($where_level)->field('pid')->find();
        //找不到上级就返回
        if ($result_member == false || $result_member == null || empty($result_member['pid'])) {
            return;
        }
        $level2_get = $v_result['level2_get'];
        $money = $member_total_money * $level2_get;
        $level_member_id = $result_member['pid'];//将上级的id附进来
        $handle_result = $this->handle_finance_common($level_member_id, $money, $type, $typetitle);//处理财务数据
        //如果失败则返回
        if (!$handle_result) {
            return;
        }

        //继续处理
        //三级返佣
        $where_level['member_id'] = $level_member_id;
        $where_level['pid'] = array('GT', 0);
        $result_member = M('member')->where($where_level)->field('pid')->find();
        //找不到上级就返回
        if ($result_member == false || $result_member == null || empty($result_member['pid'])) {
            return;
        }
        $level3_get = $v_result['level3_get'];
        $money = $member_total_money * $level3_get;
        $level_member_id = $result_member['pid'];//将上级的id附进来
        $handle_result = $this->handle_finance_common($level_member_id, $money, $type, $typetitle);//处理财务数据
        //如果失败则返回
        if (!$handle_result) {
            return;
        }
        //结束
    }


    //处理该会员的财务信息,只是人民币的处理，如果涉及其他逻辑不能用该方法
    private function handle_finance_common($member_id, $member_get_money, $type, $typetitle)
{
    M()->startTrans();//开启事务

    //增加人民币
    $r[] = M('Member')->where(array('member_id' => $member_id))->setInc('rmb', $member_get_money);

    //新增购买的货币数量
    //$r[] = M('Currency_user')->where(array('member_id'=>$member_id,array('currency_id'=>$currency_id)))->setInc('num',$member_get_money);

    //添加记录到账务明细
    $r[] = $this->addFinance_record($member_id, $type, $typetitle, $member_get_money, 1, 0);//得到人民币

    //发送消息,先去掉吧
    //$r[] = $this->addMessage_all($data['member_id'], -2, "会员自助购买", "会员自助购买" . getCurrencynameByCurrency($data['currency_id']) . ":" . $data['money']);

    if (!in_array(false, $r)) {
        M()->commit();
        return true;

    } else {
        M()->rollback();
        return false;
    }

}

    /**
     * @param $member_id
     * @param $member_get_money
     * @param $type
     * @param $typetitle
     * @param $total_currency_num 总的货币数量
     * @param $currency_id  货币id
     * @return bool
     */
    private function handle_finance_split($member_id, $member_get_money, $type, $typetitle,$total_currency_num,$currency_id)
    {
        M()->startTrans();//开启事务

        //增加人民币
        $r[] = M('Member')->where(array('member_id' => $member_id))->setInc('rmb', $member_get_money);

        //新增购买的货币数量
        //$r[] = M('Currency_user')->where(array('member_id'=>$member_id,array('currency_id'=>$currency_id)))->setInc('num',$member_get_money);

        //添加记录到账务明细
        $r[] = $this->addFinance_record($member_id, $type, $typetitle, $member_get_money, 1, 0);//得到人民币


        //增加该货币的剩余数量
        $r[] = M('Currency')->where(array('currency_id'=>$currency_id))->setInc('currency_remain_num',$total_currency_num);

        //增加货币变动明细表记录
        $data_currency_record['currency_id']=$currency_id;
        $data_currency_record['type']='收入';
        $data_currency_record['num']=$total_currency_num;
        $data_currency_record['remark']='货币拆分';
        $data_currency_record['create_time']=time();

        $r[] = M('Currency_record')->add($data_currency_record);


        //发送消息,先去掉吧
        //$r[] = $this->addMessage_all($data['member_id'], -2, "会员自助购买", "会员自助购买" . getCurrencynameByCurrency($data['currency_id']) . ":" . $data['money']);

        if (!in_array(false, $r)) {
            M()->commit();
            return true;

        } else {
            M()->rollback();
            return false;
        }

    }


    //处理该会员的财务信息,回收时用
    private function handle_finance_recovery($member_id, $member_get_money, $currency_id, $currency_num)
    {
        M()->startTrans();//开启事务

        //增加人民币
        $r[] = M('Member')->where(array('member_id' => $member_id))->setInc('rmb', $member_get_money);

        //减少回收的货币的数量
        $r[] = M('Currency_user')->where(array('member_id' => $member_id, array('currency_id' => $currency_id)))->setDec('num', $currency_num);

        //添加记录到账务明细
        $r[] = $this->addFinance_record($member_id, 26, "系统回收获得", $member_get_money, 1, 0);//得到人民币

        //回收之后,这时要更新货币剩余数量,以及添加货币变动明细
        //减少该货币的剩余数量
        $r[] = M('Currency')->where(array('currency_id'=>$currency_id))->setInc('currency_remain_num',$currency_num);

        //增加货币变动明细表记录
        $data_currency_record['currency_id']=$currency_id;
        $data_currency_record['type']='收入';
        $data_currency_record['num']=$currency_num;
        $data_currency_record['remark']='货币回收';
        $data_currency_record['create_time']=time();

        $r[] = M('Currency_record')->add($data_currency_record);



        //发送消息,先去掉吧
        //$r[] = $this->addMessage_all($data['member_id'], -2, "会员自助购买", "会员自助购买" . getCurrencynameByCurrency($data['currency_id']) . ":" . $data['money']);

        if (!in_array(false, $r)) {
            M()->commit();
            return true;

        } else {
            M()->rollback();
            return false;
        }

    }


    //财务记录表新增记录
    public function addFinance_record($member_id, $type, $content, $money, $money_type, $currency_id)
    {
        $data['member_id'] = $member_id;
        $data['type'] = $type;
        $data['content'] = $content;
        $data['money_type'] = $money_type;
        $data['money'] = $money;
        $data['add_time'] = time();
        $data['currency_id'] = $currency_id;
        $data['ip'] = get_client_ip();
        $list = M('Finance')->add($data);
        if ($list) {
            return $list;
        } else {
            return false;
        }
    }


    //拆分时对会员数据的处理
    private function  split_member_total_money($v_rusult, $v_rusult_currency_user)
    {
        $num = $v_rusult_currency_user[num];//该会员拥有的该币种的数量
        $mult = $v_rusult['mult'];//拆分翻N倍
        $price = $v_rusult['price'];//货币价格
        //计算会员能新增得到的钱数=现有数量*倍数*价格
        return $num * $mult * $price;
    }

    //回收时会员数据的处理
    private function  recovery_member_total_money($v_rusult, $v_rusult_currency_user)
    {
        $num = $v_rusult_currency_user[num];//该会员拥有的该币种的数量,可用的
        $price = $v_rusult['price'];//货币价格
        //计算会员能新增得到的钱数=现有数量*价格
        return $num * $price;
    }

    //强制回收任务
    public function  task_recovery()
    {
        $this->model = M('currency_recovery');

        $where['status'] = 0;
        $result = $this->model->where($where)->select();
        if ($result == false || $result == null) {
            exit('任务结束-没有需要处理的任务');
        }

        //先把需要处理的状态都更新为处理中，防止其他任务进来处理
        $data['status'] = 1;
        $this->model->where($where)->save($data);

        foreach ($result as $k => $v) {
            $currency_id = $v['currency_id'];
            //获取拥有该货币的会员
            $where_currcny_user['currency_id'] = $currency_id;
            $where_currcny_user['status'] = 0;//这里好像没用
            $this->mocel_currency_user = M('currency_user');
            $result_currency_user = $this->mocel_currency_user
                ->where($where_currcny_user)
                ->select();
            //如果没找到会员有该货币，则跳过
            if ($result_currency_user == false || $result_currency_user == null) {
                continue;
            }

            //循环每个会员
            foreach ($result_currency_user as $val_user) {
                $member_id = $val_user['member_id'];//会员id
                $member_total_money = $this->recovery_member_total_money($v, $val_user);//该会员能分得的总钱数，这里还没算其能获得的比例
                $member_get = $v['member_get'];//会员获得的比例
                $member_get_money = $member_total_money * $member_get;//会员最终得到钱
                $currency_num = $val_user['num'];//该会员拥有的该货币的可用数量
                $handle_result = $this->handle_finance_recovery($member_id, $member_get_money, $currency_id, $currency_num);//处理财务数据,回收的特有逻辑
                //如果成功了，处理上级的返佣
                if ($handle_result) {
                    $this->hanle_level_money($v, $member_id, $member_total_money, 26, '系统回收获得');
                }
            }

            //将该任务更新为已完成
            $finish_data['status'] = 2;
            $finish_data['finish_time'] = time();
            $finish_where['id'] = $v['id'];
            $this->model->where($finish_where)->save($finish_data);

        }

        exit('任务结束');

    }

    //强制回收7天未成交的委托卖单
    public function  task_revocery_order()
    {
       //获取系统参数
        $model_para= M('recovery_order_config')->find();//订单表
        if($model_para==false || $model_para ==null){
            exit('任务结束-未设置参数');
        }

        $this->model = M('orders');//订单表

        $where['status'] = 0;//挂单
        $where['type'] = 'sell';//卖单
        $where['add_time'] = array('LT', strtotime('-'.$model_para['set_days']." day"));
        $result = $this->model->where($where)->select();
        if ($result == false || $result == null) {
            exit('任务结束-没有需要处理的任务');
        }


        foreach ($result as $k => $v) {
            $currency_id = $v['currency_id'];
            $member_id = $v['member_id'];//会员id
            $orders_id = $v['orders_id'];//订单id
            $num = $v['num'];//委托数量

            //获取该货币当前的设置价格
            $where_currency['is_lock']=0;//允许交易
            $model_currency=M('currency')->where($where_currency)->field('trade_price')->find();
            if($model_currency==false ||$model_currency ==null){
                continue;
            }

            $member_total_money=$num*$model_currency['trade_price']; //可获得的总钱数，还没算比例的

            $member_get = $model_para['member_get'];//会员获得的比例
            $member_get_money = $member_total_money * $member_get;//会员最终得到钱
            $handle_result = $this->handle_finance_recovery_order($member_id, $member_get_money, $currency_id, $orders_id,$num);//处理财务数据,回收订单的特有逻辑
            //如果成功了，处理上级的返佣
            if ($handle_result) {
                $this->hanle_level_money($model_para, $member_id, $member_total_money, 27, '订单回收获得');
            }

        }

        exit('任务结束');

    }

    //处理该会员的财务信息,回收订单时用
    private function handle_finance_recovery_order($member_id, $member_get_money, $currency_id, $orders_id,$num)
    {
        M()->startTrans();//开启事务

        //取消订单
        $r[] = M('orders')->where(array('orders_id'=> $orders_id))->save(array('status'=>-1));

        //更改该会员拥有的货币数量,可用数量增加，冻结数量减少
        $r[] = M('Currency_user')->where(array('member_id' => $member_id, array('currency_id' => $currency_id)))->setInc('num', $num);
        $r[] = M('Currency_user')->where(array('member_id' => $member_id, array('currency_id' => $currency_id)))->setDec('forzen_num',$num);

        //增加人民币
        $r[] = M('Member')->where(array('member_id' => $member_id))->setInc('rmb', $member_get_money);

        //减少回收的货币的数量
        $r[] = M('Currency_user')->where(array('member_id' => $member_id, array('currency_id' => $currency_id)))->setDec('num', $num);

        //添加记录到账务明细
        $r[] = $this->addFinance_record($member_id, 27, "订单回收获得", $member_get_money, 1, 0);//得到人民币

        //回收之后,这时要更新货币剩余数量,以及添加货币变动明细
        //减少该货币的剩余数量
        $r[] = M('Currency')->where(array('currency_id'=>$currency_id))->setInc('currency_remain_num',$num);

        //增加货币变动明细表记录
        $data_currency_record['currency_id']=$currency_id;
        $data_currency_record['type']='收入';
        $data_currency_record['num']=$num;
        $data_currency_record['remark']='订单回收';
        $data_currency_record['create_time']=time();

        $r[] = M('Currency_record')->add($data_currency_record);


        //发送消息,先去掉吧
        //$r[] = $this->addMessage_all($data['member_id'], -2, "会员自助购买", "会员自助购买" . getCurrencynameByCurrency($data['currency_id']) . ":" . $data['money']);

        if (!in_array(false, $r)) {
            M()->commit();
            return true;

        } else {
            M()->rollback();
            return false;
        }

    }


}