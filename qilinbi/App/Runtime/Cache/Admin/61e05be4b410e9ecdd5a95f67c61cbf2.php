<?php if (!defined('THINK_PATH')) exit();?>    <!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" >
	<meta name="renderer" content="webkit">
    <title>网站后台管理</title>
    <link rel="stylesheet" type="text/css" href="/Public/Admin/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="/Public/Admin/css/main.css"/>
    <link rel="stylesheet" type="text/css" href="/Public/Admin/iconfont/demo.css">
    <link rel="stylesheet" type="text/css" href="/Public/Admin/iconfont/iconfont.css"/>
    <script type="text/javascript" src="/Public/Admin/js/libs/modernizr.min.js"></script>
	<script type="text/javascript" src="/Public/Admin/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="/Public/js/layer/layer.js"></script>
    <script type="text/javascript" src="/Public/js/laydate/laydate.js"></script>
<style>
.iconfont{ padding-right:5px;}
.fsize{ font-size:15px;}
</style>
</head>
<body>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="index.html" class="navbar-brand">后台管理</a></h1>
            <ul class="navbar-list clearfix">
                <li><a class="on" href="index.html">首页</a></li>
                <li><a href="<?php echo U('Index/index');?>" target="_blank">网站首页</a></li>
                <li><a href="<?php echo U('Index/infoStatistics');?>" target="_blank">全站统计信息</a></li>
            </ul>
        </div>
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
                <li><a href="<?php echo U('Manage/index');?>">管理员</a></li>
                <li><a href="<?php echo U('Manage/pwdUpdate');?>">修改密码</a></li>
                <li><a href="<?php echo U('Login/loginout');?>">退出</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="container clearfix">
<div class="sidebar-wrap">
        <div class="sidebar-title">
            <h1>菜单</h1>
        </div>
        <div class="sidebar-content">
            <ul class="sidebar-list">
                 <?php if(!empty($sys_nav)): ?><li>
                    <a href="#"><i class="iconfont">&#xe614;</i><span class="fsize">系统管理</span></a>
                    <ul class="sub-menu">
                        
                        	<?php if(is_array($sys_nav)): $i = 0; $__LIST__ = $sys_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["nav_url"]); ?>"><i class="iconfont"><?php echo ($vo["nav_e"]); ?></i>&nbsp;<?php echo ($vo["nav_name"]); ?></a></li>
                            <!--<li><a href="system.html"><i class="icon-font">&#xe037;</i>清理缓存</a></li>
                            <li><a href="system.html"><i class="icon-font">&#xe046;</i>数据备份</a></li>
                            <li><a href="system.html"><i class="icon-font">&#xe045;</i>数据还原</a></li>--><?php endforeach; endif; else: echo "" ;endif; ?>
                        
                    </ul>
                </li><?php endif; ?>
			   
			   <?php if(!empty($bank_nav)): ?><li>
                    <a href="#"><i class="iconfont">&#xe635;</i><span class="fsize">银行管理</span></a>
                    <ul class="sub-menu">
                        	<?php if(is_array($bank_nav)): $i = 0; $__LIST__ = $bank_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["nav_url"]); ?>"><i class="iconfont"><?php echo ($vo["nav_e"]); ?></i>&nbsp;<?php echo ($vo["nav_name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                    </ul>
                </li><?php endif; ?>
				
               <?php if(!empty($common_nav)): ?><li>
                    <a href="#"><i class="iconfont">&#xe635;</i><span class="fsize">常用操作</span></a>
                    <ul class="sub-menu">
                        	<?php if(is_array($common_nav)): $i = 0; $__LIST__ = $common_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["nav_url"]); ?>"><i class="iconfont"><?php echo ($vo["nav_e"]); ?></i>&nbsp;<?php echo ($vo["nav_name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                    </ul>
                </li><?php endif; ?>
                
                <?php if(!empty($user_nav)): ?><li>
                    <a href="#"><i class="iconfont">&#xe64d;</i><span class="fsize">会员管理</span></a>
                    <ul class="sub-menu">
                    
                        	<?php if(is_array($user_nav)): $i = 0; $__LIST__ = $user_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["nav_url"]); ?>"><i class="iconfont"><?php echo ($vo["nav_e"]); ?></i>&nbsp;<?php echo ($vo["nav_name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                    </ul>
                </li><?php endif; ?>
				
                 <?php if(!empty($bonus_nav)): ?><li>
                    <a href="#"><i class="icon-font">&#xe018;</i><span class="fsize">分红管理</span></a>
                    <ul class="sub-menu">
                    
                        	<?php if(is_array($bonus_nav)): $i = 0; $__LIST__ = $bonus_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["nav_url"]); ?>"><i class="icon-font">&#xe017;</i><?php echo ($vo["nav_name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                    </ul>
                </li><?php endif; ?>
				
                <?php if(!empty($zhongchou_nav)): ?><li>
                    <a href="#"><i class="iconfont">&#xe650;</i><span class="fsize">众筹管理</span></a>
                     <ul class="sub-menu">
                     
                        	<?php if(is_array($zhongchou_nav)): $i = 0; $__LIST__ = $zhongchou_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["nav_url"]); ?>"><i class="iconfont"><?php echo ($vo["nav_e"]); ?></i>&nbsp;<?php echo ($vo["nav_name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                    </ul>
                </li><?php endif; ?>
                
                <?php if(!empty($finance_nav)): ?><li>
                    <a href="#"><i class="iconfont">&#xe6c8;</i><span class="fsize">财务管理</span></a>
                     <ul class="sub-menu">
                     
                        	<?php if(is_array($finance_nav)): $i = 0; $__LIST__ = $finance_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["nav_url"]); ?>"><i class="iconfont"><?php echo ($vo["nav_e"]); ?></i>&nbsp;<?php echo ($vo["nav_name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                    </ul>
                </li><?php endif; ?>

                <?php if(!empty($trade_nav)): ?><li>
                        <a href="#"><i class="iconfont">&#xe631;</i><span class="fsize">交易管理</span></a>
                        <ul class="sub-menu">
                            <?php if(is_array($trade_nav)): $i = 0; $__LIST__ = $trade_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["nav_url"]); ?>"><i class="iconfont"><?php echo ($vo["nav_e"]); ?></i>&nbsp;<?php echo ($vo["nav_name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                            <!--<li><a href="<?php echo U('Trade/trade');?>"><i class="icon-font">&#xe017;</i>交易记录</a></li>-->
                            <!--<li><a href="<?php echo U('Trade/orders');?>"><i class="icon-font">&#xe017;</i>委托记录</a></li>-->
                        </ul>
                    </li><?php endif; ?>
                
                <?php if(!empty($wallet_nav)): ?><li>
                        <a href="#"><i class="iconfont">&#xe631;</i><span class="fsize">钱包币种管理</span></a>
                        <ul class="sub-menu">
                            <?php if(is_array($wallet_nav)): $i = 0; $__LIST__ = $wallet_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["nav_url"]); ?>"><i class="iconfont"><?php echo ($vo["nav_e"]); ?></i>&nbsp;<?php echo ($vo["nav_name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                            <!--<li><a href="<?php echo U('Trade/trade');?>"><i class="icon-font">&#xe017;</i>交易记录</a></li>-->
                            <!--<li><a href="<?php echo U('Trade/orders');?>"><i class="icon-font">&#xe017;</i>委托记录</a></li>-->
                        </ul>
                    </li><?php endif; ?>
                
                  <?php if(!empty($article_nav)): ?><li>
                        <a href="#"><i class="iconfont">&#xe6f7;</i><span class="fsize">文章管理</span></a>
                        <ul class="sub-menu">
                            <?php if(is_array($article_nav)): $i = 0; $__LIST__ = $article_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["nav_url"]); ?>"><i class="iconfont"><?php echo ($vo["nav_e"]); ?></i>&nbsp;<?php echo ($vo["nav_name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                            <!--<li><a href="<?php echo U('Trade/trade');?>"><i class="icon-font">&#xe017;</i>交易记录</a></li>-->
                            <!--<li><a href="<?php echo U('Trade/orders');?>"><i class="icon-font">&#xe017;</i>委托记录</a></li>-->
                        </ul>
                    </li><?php endif; ?>
                
                <?php if(!empty($admin_nav)): ?><li>
                        <a href="#"><i class="iconfont">&#xe64d;</i><span class="fsize">管理员管理</span></a>
                        <ul class="sub-menu">
                            <?php if(is_array($admin_nav)): $i = 0; $__LIST__ = $admin_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["nav_url"]); ?>"><i class="iconfont"><?php echo ($vo["nav_e"]); ?></i>&nbsp;<?php echo ($vo["nav_name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                            <!--<li><a href="<?php echo U('Trade/trade');?>"><i class="icon-font">&#xe017;</i>交易记录</a></li>-->
                            <!--<li><a href="<?php echo U('Trade/orders');?>"><i class="icon-font">&#xe017;</i>委托记录</a></li>-->
                        </ul>
                    </li><?php endif; ?>
                <?php if(!empty($tongji_nav)): ?><li>
                        <a href="#"><i class="iconfont">&#xe64d;</i><span class="fsize">统计</span></a>
                        <ul class="sub-menu">
                            <?php if(is_array($tongji_nav)): $i = 0; $__LIST__ = $tongji_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["nav_url"]); ?>"><i class="iconfont"><?php echo ($vo["nav_e"]); ?></i>&nbsp;<?php echo ($vo["nav_name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                            <!--<li><a href="<?php echo U('Trade/trade');?>"><i class="icon-font">&#xe017;</i>交易记录</a></li>-->
                            <!--<li><a href="<?php echo U('Trade/orders');?>"><i class="icon-font">&#xe017;</i>委托记录</a></li>-->
                        </ul>
                    </li><?php endif; ?>
            </ul>
        </div>
    </div>
<script>
$(".sidebar-list li").children("a").on("click",function(){
	$(this).next(".sub-menu").toggle();
});
</script>

    <!--/sidebar-->
	
	<link type="text/css" href="/Public/Admin/css/jquery-ui-1.8.17.custom.css" rel="stylesheet" />
    <link type="text/css" href="/Public/Admin/css/jquery-ui-timepicker-addon.css" rel="stylesheet" />
	<script src="/Public/Admin/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="/Public/Admin/js/jquery-ui-1.8.17.custom.min.js"></script>
    <script type="text/javascript" src="/Public/Admin/js/jquery-ui-timepicker-addon.js"></script>
    <script type="text/javascript" src="/Public/Admin/js/jquery-ui-timepicker-zh-CN.js"></script>

    <script>
(function ($) {
    // 汉化 Datepicker
    $.datepicker.regional['zh-CN'] =
    {
        clearText: '清除', clearStatus: '清除已选日期',
        closeText: '关闭', closeStatus: '不改变当前选择',
        prevText: '<上月', prevStatus: '显示上月',
        nextText: '下月>', nextStatus: '显示下月',
        currentText: '今天', currentStatus: '显示本月',
        monthNames: ['一月', '二月', '三月', '四月', '五月', '六月',
        '七月', '八月', '九月', '十月', '十一月', '十二月'],
        monthNamesShort: ['一', '二', '三', '四', '五', '六',
        '七', '八', '九', '十', '十一', '十二'],
        monthStatus: '选择月份', yearStatus: '选择年份',
        weekHeader: '周', weekStatus: '年内周次',
        dayNames: ['星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六'],
        dayNamesShort: ['周日', '周一', '周二', '周三', '周四', '周五', '周六'],
        dayNamesMin: ['日', '一', '二', '三', '四', '五', '六'],
        dayStatus: '设置 DD 为一周起始', dateStatus: '选择 m月 d日, DD',
        dateFormat: 'yy-mm-dd', firstDay: 1,
        initStatus: '请选择日期', isRTL: false
    };
    $.datepicker.setDefaults($.datepicker.regional['zh-CN']);
 
    //汉化 Timepicker
  $.timepicker.regional['zh-CN'] = {
    timeOnlyTitle: '选择时间',
    timeText: '时间',
    hourText: '小时',
    minuteText: '分钟',
    secondText: '秒钟',
    millisecText: '微秒',
    timezoneText: '时区',
    currentText: '现在时间',
    closeText: '关闭',
    timeFormat: 'hh:mm',
    amNames: ['AM', 'A'],
    pmNames: ['PM', 'P'],
    ampm: false
  };
  $.timepicker.setDefaults($.timepicker.regional['zh-CN']);
})(jQuery);
</script>
    <div class="main-wrap">
        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href=":U('Index/index')}">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">众筹设置</span></div>
        </div>
        <div class="result-wrap">
            <form action="<?php echo U('Zhongchou/add');?>" method="post" id="myform" name="myform" enctype="multipart/form-data">
                <div class="config-items">
                    <div class="config-title">
                        <h1><i class="icon-font">&#xe00a;</i>众筹详细信息设置</h1>
                    </div>
                    <div class="result-content">
                        <table width="100%" class="insert-tab">
                            <tbody>
                            <tr>
                                <th width="15%"><i class="require-red">*</i>图片1：</th>
                                <td><img style="width:400px;" src="<?php echo ($list["url1"]); ?>"><input type="hidden" name="url1" value="<?php echo ($list["url1"]); ?>" class="common-text"></td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>众筹封面图片上传：</th>
                                <td><input type="file" name="Filedata1" class="common-text"></td>
                            </tr>
                            <tr>
                                <th width="15%"><i class="require-red">*</i>图片2：</th>
                                <td><img style="width:400px;" src="<?php echo ($list["url2"]); ?>"><input type="hidden" name="url2" value="<?php echo ($list["url2"]); ?>" class="common-text"></td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>众筹详情图片上传：</th>
                                <td><input type="file" name="Filedata2" class="common-text"></td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>需下载文件上传：</th>
                                <td><input type="file" name="wenjian_url" class="common-text"></td>
                            </tr>
                            <tr>
                                    <th><i class="require-red">*</i>标题：</th>
                                    <td><input type="text" id="" value="<?php echo ($list["title"]); ?>" size="85" name="title" class="common-text"></td>
                                </tr>
                                <tr>
                                    <th><i class="require-red">*</i>众筹币种：</th>
                                    <td>
                                    <select name="currency_id">
                                    	<?php if(is_array($currency)): $i = 0; $__LIST__ = $currency;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo["currency_id"]); ?>"
                                                <?php if($list["currency_id"] == $vo["currency_id"] ): ?>selected="selected"<?php endif; ?>
                                        class="common-text"><?php echo ($vo["currency_name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
                                    </select>
                                    </td>
                                </tr>
                            <tr>
                                <th><i class="require-red">*</i>众筹购买币种：</th>
                                <td>
                                    <select name="buy_currency_id">
                                        <option value="0"  <?php if($list["buy_currency_id"] == 0 ): ?>selected="selected"<?php endif; ?> >人民币</option>
                                        <?php if(is_array($currency)): $i = 0; $__LIST__ = $currency;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo["currency_id"]); ?>"
                                                <?php if($list["buy_currency_id"] == $vo["currency_id"] ): ?>selected="selected"<?php endif; ?>
                                                class="common-text"><?php echo ($vo["currency_name"]); ?>
                                            </option><?php endforeach; endif; else: echo "" ;endif; ?>
                                    </select>
                                </td>
                            </tr>

                              <tr>
                                <th><i class="require-red">*</i>众筹获得币种是否冻结：</th>
                                <td>
                                    <select name="is_forzen" onchange="show_bl();" id="re_forzen">
                                       <option value='0'>冻结</option>
                                       <option value='1'>可用</option>
                                    </select>
                                    <span id="re_span">&nbsp;&nbsp;&nbsp;&nbsp;解冻比例：<input type="text" name="remove_forzen_bili" value="<?php echo ((isset($list['remove_forzen_bili']) && ($list['remove_forzen_bili'] !== ""))?($list['remove_forzen_bili']):0); ?>" class="common-text" id="re_bl"/>%</span>
                                    <span id="re_cycle">&nbsp;&nbsp;&nbsp;&nbsp;解冻周期：<input type="text" name="remove_forzen_cycle" value="<?php echo ((isset($list['remove_forzen_cycle']) && ($list['remove_forzen_cycle'] !== ""))?($list['remove_forzen_cycle']):0); ?>" class="common-text" id="re_bl"/>天</span>
                                </td>
                                
                            </tr>
                                <tr>
                                    <th><i class="require-red">*</i>众筹发售量：</th>
                                    <td><input type="text" id="" value="<?php echo ($list["num"]); ?>" size="85" name="num" class="common-text"><input type="hidden" id="" value="<?php echo ($list["id"]); ?>" size="85" name="id" class="common-text"></td>
                                </tr>
                                <tr>
                                    <th><i class="require-red">*</i>众筹保留量：</th>
                                    <td><input type="text" id="" value="<?php echo ($list["num_nosell"]); ?>" size="85" name="num_nosell" class="common-text"></td>
                                </tr>
                                <tr>
                                    <th><i class="require-red">*</i>众筹价格：</th>
                                    <td><input type="text" id="" value="<?php echo ($list["price"]); ?>" size="85" name="price" class="common-text"></td>
                                </tr>
                                <tr>
                                    <th><i class="require-red">*</i>每人限购：</th>
                                    <td><input type="text" id="" value="<?php echo ($list["limit"]); ?>" size="85" name="limit" class="common-text"></td>
                                </tr>
                                <tr>
                                    <th><i class="require-red">*</i>最低购买：</th>
                                    <td><input type="text" id="" value="<?php echo ($list["min_limit"]); ?>" size="85" name="min_limit" class="common-text"></td>
                                </tr>
                                <tr>
                                    <th><i class="require-red">*</i>限购次数：</th>
                                    <td><input type="text" id="" value="<?php echo ($list["limit_count"]); ?>" size="85" name="limit_count" class="common-text"></td>
                                </tr>
                                 <tr>
                                    <th><i class="require-red">*</i>众筹成功比例：</th>
                                    <td><input type="text" id="" value="<?php echo ($list["zhongchou_success_bili"]); ?>" size="85" name="zhongchou_success_bili" class="common-text">%</td>
                                </tr>
                              	<tr>
                                    <th><i class="require-red">*</i>抢购时间：</th>
                                    <td>
                            
                                    <div class="row"><div class="col-md-6">
                                                    <i class="fa fa-calendar"></i></span>
                                                    <input type="text" name="add_time" class="ui_timepicker" id="aaaaa1" placeholder="选择日期时间" value="<?php echo (date('Y-m-d H:i:s',$list["add_time"])); ?>"  />
                                                </div></div></td>
                                  </tr>
                                  <script type="text/javascript">
                                    $(function () {
                                        $("#aaaaa1").datetimepicker({
                                            //showOn: "button",
                                            //buttonImage: "./css/images/icon_calendar.gif",
                                            //buttonImageOnly: true,
                                            showSecond: true,
                                            timeFormat: 'hh:mm:ss',
                                            stepHour: 1,
                                            stepMinute: 1,
                                            stepSecond: 1
                                        })
                                            $("#aaaaa2").datetimepicker({
                                            //showOn: "button",
                                            //buttonImage: "./css/images/icon_calendar.gif",
                                            //buttonImageOnly: true,
                                            showSecond: true,
                                            timeFormat: 'hh:mm:ss',
                                            stepHour: 1,
                                            stepMinute: 1,
                                            stepSecond: 1
                                        })
                                   
                                    })
                                </script>
                                  <tr>
                                    <th><i class="require-red">*</i>结束时间：</th>
                                    <td><div class="row"><div class="col-md-6">
                                                    <i class="fa fa-calendar"></i></span>
                                                    <input type="text" name="end_time" class="ui_timepicker" id="aaaaa2" placeholder="选择日期时间" value="<?php echo (date('Y-m-d H:i:s',$list["end_time"])); ?>" / >
                                                </div></div></td>
                            
                                  </tr>
                                  <tr>
                                    <td>认购介绍</td>
                                    <td><textarea name="info" cols=100 rows=20><?php echo ($info); ?></textarea>
                                    </td>
                                  </tr>
                             
                                <tr>
                                    <th></th>
                                    <td>
                                    	<input type="hidden" value="<?php echo ($list["id"]); ?>" name="id">
                                        <input type="submit" value="提交" class="btn btn-primary btn6 mr10">
                                        <a href="<?php echo U('Zhongchou/index');?>"><input type="button" value="返回"  class="btn btn6"></a>
                                    </td>
                                </tr>
                            </tbody></table>
                    </div>
                </div>
                
            </form>
        </div>
    </div>
    <!--/main-->
</div>

<script language="javascript" src="/Public/plugin/kindeditor/jquery.tools.min.js"></script>
<script language="javascript" src="/Public/plugin/kindeditor/kindeditor-min.js"></script>
<script language="javascript" src="/Public/plugin/kindeditor/zh_CN.js"></script>
<script language="javascript">
$(document).ready(function(){
    $('#all').click(function(){
	    $('.id').attr('checked',true);
	});
	$('#all_return').click(function(){
	    $('.id').attr('checked',false);
	});
    $('#dels').click(function(){

		f = 0;
	    $('.id').each(function(){
		    if($(this).attr('checked')) f = 1;
		});
		
        if(f==0){
		    alert('请选择要删除的项！');
		}else{
		    $('#formid').submit();
		}
	});
	$('#add').click(function(){
	    location.href="?s=Admin/Issue/add";
	});
});

var editor;
KindEditor.ready(function(K) {
	editor = K.create('textarea[name="info"]', {
		resizeType : 1,
		allowPreviewEmoticons : false,
		allowImageUpload : true,
		items : [
			'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
			'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
			'insertunorderedlist', '|', 'image', 'link']
	});
});
</script>
<script>
	function show_bl(){
		if($('#re_forzen').val()==0){
			$('#re_span').show();
			$('#re_bl').attr("disabled",false);
			$('#re_cycle').show();
		}else{
			$('#re_span').hide();
			$('#re_bl').attr("disabled",true);
			$('#re_cycle').hide();
		}
		
	}
</script>
</body>
</html>
<script>
$(".sub-menu").eq(5).show();
$(".sub-menu").eq(5).children("li").eq(0).addClass("on");
</script>