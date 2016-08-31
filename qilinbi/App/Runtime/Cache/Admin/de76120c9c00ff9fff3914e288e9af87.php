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

                <!--
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
               -->
                
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
            <div class="crumb-list"><i class="icon-font"></i><a href="<?php echo U('Index/index');?>">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">第三方充值记录</span></div>
        </div>
        <!-- <div class="search-wrap">
            <div class="search-content">
				<div class="search-wrap">
					<div class="search-content">
						<form action="<?php echo U('Pay/payByMan');?>" method="post">
							<table class="search-tab">
								<tr>
									<th width="120">选择分类:</th>
									<td>
										<select name="status" id="">
											<option value="">全部</option>
											<option value="0">未付款</option>
											<option value="1">充值成功</option>
											<option value="2">充值失败</option>
											<option value="3">已失效</option>
										</select>
									</td>
									<th width="70">汇款人:</th>
									<td><input class="common-text" placeholder="汇款人" name="member_name" value="" id="" type="text"></td>
									<td><input class="btn btn-primary btn2" name="sub" value="查询" type="submit"></td>
								</tr>
							</table>
						</form> 
					</div>
				</div>
			</div>
        </div> -->
        <div class="result-wrap">
            <form name="myform" id="myform" method="post">
            </form>			
		<div class="result-tab">
				<div class="panel-actions" style="height:50px;">
                <h1 class="fl" style="line-height:50px; margin-left:20px;">
					<i class="icon-font"></i>
					推广统计状况
				</h1>
				    <form action="/newadmin.php/Home/Member/commissionShow/" method="get" class="form-inline form-search" style="fr">					
					<div class="fr" style="line-height:50px;">						
                       <!-- <input type="text" name="userid" value=""  class="form-control search-query" style="width:20%;" placeholder="会员id" title="会员id" /> --> 
								<input type="text" name="stime" class="stime" placeholder="开始时间：如2016-03-22" title="开始时间" readonly="" style="margin-right:20px;" onclick="laydate()">		
								<input type="text" name="etime" class="etime" placeholder="结束时间：如2016-04-21" title="结束时间" readonly="" style="margin-right:20px;" onclick="laydate()">

							<input type="submit" id="submit" class="btn btn-primary" value="搜索" data-loading="稍候..." style="margin-right:20px;">
					</div>
				  </form>
				</div>
			<div class="" style="overflow:hidden;">
				<div class="fl" style="padding-bottom:10px; width:32%; margin-left:15px;">
							<strong>					
								按选择检索条件排名
							</strong>
						<table class="table table-striped tablesorter text-center" style="width:100%; border: 1px solid #ddd;">
							<thead>
								<tr>
									<th class="text-center w-100px">序号</th>
									<th class="text-center w-180px">用户名(ID)</th>
									<th class="text-center w-180px">推荐人数</th>
								</tr>
							</thead>
							<tbody>
								<tr>
										<td>1</td>
										<td><a href="/newadmin.php/Home/Member/index/userid/106">uC3067990132574d(106)</a></td>
										<td>17</td>
									</tr><tr>
										<td>2</td>
										<td><a href="/newadmin.php/Home/Member/index/userid/2672">fw1136(2672)</a></td>
										<td>15</td>
									</tr><tr>
										<td>3</td>
										<td><a href="/newadmin.php/Home/Member/index/userid/2309">uC3118731101983d(2309)</a></td>
										<td>15</td>
									</tr><tr>
										<td>4</td>
										<td><a href="/newadmin.php/Home/Member/index/userid/2">15557106789(2)</a></td>
										<td>14</td>
									</tr><tr>
										<td>5</td>
										<td><a href="/newadmin.php/Home/Member/index/userid/151">lm3829(151)</a></td>
										<td>10</td>
									</tr><tr>
										<td>6</td>
										<td><a href="/newadmin.php/Home/Member/index/userid/3538">(3538)</a></td>
										<td>7</td>
									</tr><tr>
										<td>7</td>
										<td><a href="/newadmin.php/Home/Member/index/userid/9">18298738067(9)</a></td>
										<td>6</td>
									</tr><tr>
										<td>8</td>
										<td><a href="/newadmin.php/Home/Member/index/userid/732">uC3080629116615d(732)</a></td>
										<td>5</td>
									</tr><tr>
										<td>9</td>
										<td><a href="/newadmin.php/Home/Member/index/userid/1180">xiagangxzl82(1180)</a></td>
										<td>5</td>
									</tr><tr>
										<td>10</td>
										<td><a href="/newadmin.php/Home/Member/index/userid/1876">bsd888(1876)</a></td>
										<td>4</td>
									</tr>							</tbody>
						</table>
				</div>
				<div class="fl" style="padding-bottom:10px; width:32%; margin-left:10px;">
							<strong>					
								最新周排名
							</strong>
						<table class="table table-striped tablesorter text-center" style="width:100%; border: 1px solid #ddd;">
							<thead>
								<tr>
									<th class="text-center w-100px">序号</th>
									<th class="text-center w-180px">用户名(ID)</th>
									<th class="text-center w-180px">推荐人数</th>
								</tr>
							</thead>
							<tbody>
								<tr>
										<td>1</td>
										<td><a href="/newadmin.php/Home/Member/index/userid/16">lww3100901428(16)</a></td>
										<td>1</td>
									</tr><tr>
										<td>2</td>
										<td><a href="/newadmin.php/Home/Member/index/userid/20">cheakche(20)</a></td>
										<td>1</td>
									</tr><tr>
										<td>3</td>
										<td><a href="/newadmin.php/Home/Member/index/userid/2431">bsdcxiangguo(2431)</a></td>
										<td>1</td>
									</tr><tr>
										<td>4</td>
										<td><a href="/newadmin.php/Home/Member/index/userid/3250">sxljx(3250)</a></td>
										<td>1</td>
									</tr><tr>
										<td>5</td>
										<td><a href="/newadmin.php/Home/Member/index/userid/13">uC3067627225100d(13)</a></td>
										<td>1</td>
									</tr>							
                             </tbody>
						</table>
				</div>
				<div class="fl" style="padding-bottom:10px; width:32%; margin-left:10px;">
							<strong>					
								最新月排名
							</strong>
						<table class="table table-striped tablesorter text-center" style="width:100%; border: 1px solid #ddd;">
							<thead>
								<tr>
									<th class="text-center w-100px">序号</th>
									<th class="text-center w-180px">用户名(ID)</th>
									<th class="text-center w-180px">推荐人数</th>
								</tr>
							</thead>
							<tbody>
								<tr>
										<td>1</td>
										<td><a href="/newadmin.php/Home/Member/index/userid/2309">uC3118731101983d(2309)</a></td>
										<td>15</td>
									</tr><tr>
										<td>2</td>
										<td><a href="/newadmin.php/Home/Member/index/userid/106">uC3067990132574d(106)</a></td>
										<td>15</td>
									</tr><tr>
										<td>3</td>
										<td><a href="/newadmin.php/Home/Member/index/userid/2">15557106789(2)</a></td>
										<td>14</td>
									</tr><tr>
										<td>4</td>
										<td><a href="/newadmin.php/Home/Member/index/userid/2672">fw1136(2672)</a></td>
										<td>14</td>
									</tr><tr>
										<td>5</td>
										<td><a href="/newadmin.php/Home/Member/index/userid/151">lm3829(151)</a></td>
										<td>10</td>
									</tr><tr>
										<td>6</td>
										<td><a href="/newadmin.php/Home/Member/index/userid/3538">(3538)</a></td>
										<td>7</td>
									</tr><tr>
										<td>7</td>
										<td><a href="/newadmin.php/Home/Member/index/userid/732">uC3080629116615d(732)</a></td>
										<td>5</td>
									</tr><tr>
										<td>8</td>
										<td><a href="/newadmin.php/Home/Member/index/userid/1180">xiagangxzl82(1180)</a></td>
										<td>5</td>
									</tr><tr>
										<td>9</td>
										<td><a href="/newadmin.php/Home/Member/index/userid/9">18298738067(9)</a></td>
										<td>5</td>
									</tr><tr>
										<td>10</td>
										<td><a href="/newadmin.php/Home/Member/index/userid/10">uC3067608965959d(10)</a></td>
										<td>4</td>
									</tr>							</tbody>
						</table>
				</div>
			</div>				
			<div>
				<div style="float:right; clear:none;" class="page form-inline">
					<div class="pagination"></div>
				</div>
			</div>
			</div>	
        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>

<script>
function pass(id){
	layer.confirm(
	'确定通过审核', 
	{btn:['确定','取消']},
	function(){
	  $.post("<?php echo U('Pay/payUpdate');?>",{"pay_id":id,"status":1},function(data){
		  if(data.status==0){
					layer.msg(data['info']);
					setTimeout("location.reload()",2000);
				}else{
					layer.msg(data['info']);
					setTimeout("location.reload()",2000);
				}
		})
	}
	),
	function(){
		layer.msg('已取消');
	}
}

function fail(id){
	layer.confirm(
	'确定不通过审核', 
	{btn: ['确定','取消'],},
	function(){
		//href="<?php echo U('Pay/payUpdate',array('pay_id'=>$vo['pay_id'],'status'=>1));?>			
		$.post("<?php echo U('Pay/payUpdate');?>",{"pay_id":id,"status":2},function(data){
				if(data.status == 0){
					layer.msg(data['info']);
					setTimeout("location.reload()",2000);
					
				}else if(data.status == 2){
					layer.msg(data['info']);
					setTimeout("location.reload()",2000);
				}else{
					layer.msg(data['info']);
					setTimeout("location.reload()",2000);
				}
		})
		}
		),
	 function(){
		layer.msg('已取消');
	}
}
</script>
<script>
$(".sub-menu").eq(9).show();
$(".sub-menu").eq(9).children("li").eq(0).addClass("on");
</script>