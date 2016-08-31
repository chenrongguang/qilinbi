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
    <div class="main-wrap">
		

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="<?php echo U('Index/index');?>">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">众筹个人记录</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
				<div class="search-wrap">
					<div class="search-content">
						<form action="<?php echo U('Zhongchou/log');?>" method="post">
							<table class="search-tab">
								<tr>
									<th width="120">选择分类:</th>
									<td>
										<select name="iid" >
											<option value="0">全部</option>
											<?php if(is_array($issue)): $i = 0; $__LIST__ = $issue;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo["id"]); ?>"><?php echo ($vo["title"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
										</select>
									</td>
									<th width="70">用户姓名:</th>
									<td><input class="common-text" placeholder="用户姓名" name="name" value="" id="" type="text"></td>
                                    <th width="70">用户ID:</th>
									<td><input class="common-text" placeholder="用户ID" name="uid" value="" id="" type="text"></td>
                                    <th width="70">用户邮箱:</th>
									<td><input class="common-text" placeholder="用户邮箱" name="email" value="" id="" type="text"></td>
									<td><input class="btn btn-primary btn2" name="sub" value="查询" type="submit"></td>
								</tr>
							</table>
						</form>
                        <form action="<?php echo U('Zhongchou/jiedongByIid');?>" method="post">
							<table class="search-tab">
								<tr>
									<th width="120">选择分类:</th>
									<td>
										<select name="iid" id="zhongchouid">
											<option value="0">全部</option>
											<?php if(is_array($issue)): $i = 0; $__LIST__ = $issue;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo["id"]); ?>"><?php echo ($vo["title"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
										</select>
									</td>
									<td><input class="btn btn-primary btn2" name="sub" value="开始解冻" type="button" onclick="kaishijiedong()">（按照比例开始第一次解冻）</td>
									<td><input class="btn btn-primary btn2" name="sub" value="解冻该众筹" type="submit">（解冻当前选择众筹全部币种）</td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
        </div>
        <div class="result-wrap">
            <form name="myform" id="myform" method="post">
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                            <th>众筹编号</th>
                            <th>众筹名称</th>
                            <th>购买人</th>
                            <th>购买数量</th>
                            <th>冻结数量</th>
                            <th>单价</th>
                            <th>购买总额</th>
                            <th>时间</th>
                            <th>购买花费币种类型</th>
                            <th>操作</th>
                        </tr>
                        <?php if(is_array($log)): $i = 0; $__LIST__ = $log;if( count($__LIST__)==0 ) : echo "$empty" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
                            <td><?php echo ($vo["iid"]); ?></td>
                            <td><?php echo ($vo["title"]); ?></td>
                            <td><?php echo ($vo["name"]); ?></td>
                            <td><?php echo ($vo["num"]); ?></td>
                             <td><?php echo ($vo["deal"]); ?></td>
                            <td><?php echo ($vo["price"]); ?></td>
                            <td><?php echo ($vo["count"]); ?></td>
                            <td><?php echo (date("Y-m-d H:i:s",$vo["add_time"])); ?></td>
                            <td>[<?php echo ($vo["buy_name"]); ?>]</td>
                            <td><a href="<?php echo U('Zhongchou/jiedongById',array('id'=>$vo['id']));?>">解冻</a></td>
                        </tr><?php endforeach; endif; else: echo "$empty" ;endif; ?>
                    </table>
					 <div class="list-page"> <ul><?php echo ($page); ?></ul></div>
                </div>
            </form>
        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>
<script>
	function kaishijiedong(){
		layer.confirm('确定开始解冻？', {
	  btn: ['确定','取消'], //按钮
	  title: '开始解冻'
	}, function(){
	  $.post("<?php echo U('Zhongchou/jiedong_start');?>",{iid:$('#zhongchouid').val()},function(data){
				   if(data['status'] == 2){
					   layer.msg(data['info']);
					   setTimeout(function(){location.reload();},1000);
				   }else{
					   layer.msg(data['info']);
				   }
			})
	}, function(){
	  layer.msg('已取消');
	});

	}
</script>
<script>
$(".sub-menu").eq(5).show();
$(".sub-menu").eq(5).children("li").eq(1).addClass("on");
</script>