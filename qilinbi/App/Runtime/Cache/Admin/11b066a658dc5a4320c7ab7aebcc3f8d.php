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
					数据统计状况
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
				<div class="fl" style="padding-bottom:10px; width:56%; margin-left:15px;">
							<strong>					
								充值统计
							</strong>
				<table class="table table-hover table-striped table-bordered" style="width:100%; border: 1px solid #ddd;">
				<thead>	
					<tr>
						<th class="text-center">币种</th>
                        <th class="text-center">单数</th>
						<th class="text-center">充值总金额</th>
					</tr>
				</thead>
				<tbody>					
					<tr>
						<td class="text-right ">VRC</td>
						<td class="text-right"><a href="#">159</a></td>
                        <td class="text-right">
						 15709378.84000000						</td>                       
					</tr><tr>
						<td class="text-right ">CNY</td>
						<td class="text-right"><a href="#">1878</a></td>
                        <td class="text-right">
						 3329383.59860597						</td>                       
					</tr><tr>
						<td class="text-right ">FHG</td>
						<td class="text-right"><a href="#">1363</a></td>
                        <td class="text-right">
						 120209.00000000						</td>                       
					</tr><tr>
						<td class="text-right ">NEC</td>
						<td class="text-right"><a href="#">77</a></td>
                        <td class="text-right">
						 762908.08000000						</td>                       
					</tr><tr>
						<td class="text-right ">BLK</td>
						<td class="text-right"><a href="#">143</a></td>
                        <td class="text-right">
						 5227519.92456850						</td>                       
					</tr><tr>
						<td class="text-right ">BC</td>
						<td class="text-right"><a href="#">3</a></td>
                        <td class="text-right">
						 15000000.00000000						</td>                       
					</tr>				</tbody>
			</table>
				</div>
				<div class="fl" style="padding-bottom:10px; width:40%; margin-left:10px;">
							<strong>					
								提现统计
							</strong>
						<table class="table table-hover table-striped table-bordered" style="width:100%;border: 1px solid #ddd;">
				<thead>	
					<tr>
						<th class="text-center w-100px">币种</th>
                        <th class="text-center w-200px">单数</th>
						<th class="text-center w-300px">提现总金额</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="text-right ">VRC</td>
						<td class="text-right "><a href="/newadmin.php/Home/List/drawShow/?userid=&amp;coinid=5&amp;stime=2016-03-22&amp;etime=2016-04-21">30</a></td>
                        <td class="text-right ">
						 359707.43090000						</td>                       
					</tr><tr>
						<td class="text-right ">CNY</td>
						<td class="text-right "><a href="/newadmin.php/Home/List/drawShow/?userid=&amp;coinid=1&amp;stime=2016-03-22&amp;etime=2016-04-21">208</a></td>
                        <td class="text-right ">
						 1301473.46651589						</td>                       
					</tr><tr>
						<td class="text-right ">FHG</td>
						<td class="text-right "><a href="/newadmin.php/Home/List/drawShow/?userid=&amp;coinid=8&amp;stime=2016-03-22&amp;etime=2016-04-21">4</a></td>
                        <td class="text-right ">
						 3221.00000000						</td>                       
					</tr><tr>
						<td class="text-right ">NEC</td>
						<td class="text-right "><a href="/newadmin.php/Home/List/drawShow/?userid=&amp;coinid=12&amp;stime=2016-03-22&amp;etime=2016-04-21">6</a></td>
                        <td class="text-right ">
						 33442.08000000						</td>                       
					</tr><tr>
						<td class="text-right ">BLK</td>
						<td class="text-right "><a href="/newadmin.php/Home/List/drawShow/?userid=&amp;coinid=13&amp;stime=2016-03-22&amp;etime=2016-04-21">17</a></td>
                        <td class="text-right ">
						 18019.14980000						</td>                       
					</tr><tr>
						<td class="text-right ">BC</td>
						<td class="text-right "><a href="/newadmin.php/Home/List/drawShow/?userid=&amp;coinid=14&amp;stime=2016-03-22&amp;etime=2016-04-21">1</a></td>
                        <td class="text-right ">
						 847.10000000						</td>                       
					</tr>				</tbody>
			</table>
				</div>
                  <div style="padding-bottom:10px; width:97%; clear:both; margin-left:15px;">
							<strong>					
								挂单统计
							</strong>
			<table class="table table-hover table-striped table-bordered" style="width:100%;border: 1px solid #ddd;">
				<thead>	
					<tr>
						<th class="text-center w-100px">交易类型</th>
                        <th class="text-center w-200px">单数</th>
						<th class="text-center w-200px">交易数量</th>
						<th class="text-center w-300px">交易额</th>
					</tr>
				</thead>
				<tbody>
					<tr>                     
						<td class="text-right ">VRC_CNY</td>
						<td class="text-right "><a href="/newadmin.php/Home/List/orderShow/?userid=&amp;coinid=3&amp;stime=2016-03-22&amp;etime=2016-04-21">723</a></td>
                        <td class="text-right ">
						 137501005.91950000						(VRC)</td>
                        <td class="text-right ">
						 2524073.81162538						(CNY)</td>
                        
					</tr><tr>                     
						<td class="text-right ">FHG_CNY</td>
						<td class="text-right "><a href="/newadmin.php/Home/List/orderShow/?userid=&amp;coinid=5&amp;stime=2016-03-22&amp;etime=2016-04-21">500</a></td>
                        <td class="text-right ">
						 895138.77220000						(FHG)</td>
                        <td class="text-right ">
						 764416.86600404						(CNY)</td>
                        
					</tr><tr>                     
						<td class="text-right ">NEC_CNY</td>
						<td class="text-right "><a href="/newadmin.php/Home/List/orderShow/?userid=&amp;coinid=12&amp;stime=2016-03-22&amp;etime=2016-04-21">590</a></td>
                        <td class="text-right ">
						 20930678.15000000						(NEC)</td>
                        <td class="text-right ">
						 1623323.83343272						(CNY)</td>
                        
					</tr><tr>                     
						<td class="text-right ">BLK_CNY</td>
						<td class="text-right "><a href="/newadmin.php/Home/List/orderShow/?userid=&amp;coinid=13&amp;stime=2016-03-22&amp;etime=2016-04-21">166</a></td>
                        <td class="text-right ">
						 783301.84820000						(BLK)</td>
                        <td class="text-right ">
						 202950.16986644						(CNY)</td>
                        
					</tr><tr>                     
						<td class="text-right ">BC_CNY</td>
						<td class="text-right "><a href="/newadmin.php/Home/List/orderShow/?userid=&amp;coinid=15&amp;stime=2016-03-22&amp;etime=2016-04-21">369</a></td>
                        <td class="text-right ">
						 118273945.88232700						(BC)</td>
                        <td class="text-right ">
						 2239415.40623271						(CNY)</td>
                        
					</tr>                    <tr>						
                        <th colspan="2" class="text-right ">合计</th>
                        <td class="text-right " colspan="2">CNY : 0 <br>                        </td>
					</tr>
					
				</tbody>
			</table>
				</div>
			</div>
            
            
            <div class="" style="overflow:hidden;">
				<div style="padding-bottom:10px; width:97%; clear:both; margin-left:15px;">
							<strong>					
								成交统计
							</strong>
				<table class="table table-hover table-striped table-bordered" style="width:100%; border: 1px solid #ddd;">
				<thead>	
					<tr>
						<th class="text-center w-100px">交易类型</th>
                        <th class="text-center w-200px">单数</th>
						<th class="text-center w-200px">交易数量</th>
						<th class="text-center w-300px">交易额</th>
					</tr>
				</thead>
				<tbody>					
					<tr>
						<td class="text-right ">VRC_CNY</td>
						<td class="text-right "><a href="/newadmin.php/Home/List/dealShow/?userid=&amp;coinid=3&amp;stime=2016-03-22&amp;etime=2016-04-21">2342</a></td>
                        <td class="text-right "> 25772063.86320000(VRC)</td>
                        <td class="text-right "> 531681.87829542(CNY)</td>                       
					</tr><tr>
						<td class="text-right ">FHG_CNY</td>
						<td class="text-right "><a href="/newadmin.php/Home/List/dealShow/?userid=&amp;coinid=5&amp;stime=2016-03-22&amp;etime=2016-04-21">3020</a></td>
                        <td class="text-right "> 636815.69080000(FHG)</td>
                        <td class="text-right "> 665641.69840258(CNY)</td>                       
					</tr><tr>
						<td class="text-right ">NEC_CNY</td>
						<td class="text-right "><a href="/newadmin.php/Home/List/dealShow/?userid=&amp;coinid=12&amp;stime=2016-03-22&amp;etime=2016-04-21">3224</a></td>
                        <td class="text-right "> 15967399.20800000(NEC)</td>
                        <td class="text-right "> 1714333.93681580(CNY)</td>                       
					</tr><tr>
						<td class="text-right ">BLK_CNY</td>
						<td class="text-right "><a href="/newadmin.php/Home/List/dealShow/?userid=&amp;coinid=13&amp;stime=2016-03-22&amp;etime=2016-04-21">1198</a></td>
                        <td class="text-right "> 1029738.47240000(BLK)</td>
                        <td class="text-right "> 248516.41827982(CNY)</td>                       
					</tr><tr>
						<td class="text-right ">BC_CNY</td>
						<td class="text-right "><a href="/newadmin.php/Home/List/dealShow/?userid=&amp;coinid=15&amp;stime=2016-03-22&amp;etime=2016-04-21">2574</a></td>
                        <td class="text-right "> 47329548.38900000(BC)</td>
                        <td class="text-right "> 4200742.86984396(CNY)</td>                       
					</tr>                    <tr>
						<th colspan="2" class="text-right ">合计</th>
                        <td colspan="2" class="text-right ">CNY : 7360916.8016376 <br></td>
					</tr>
					
				</tbody>
			</table>
				</div>
				<div style="padding-bottom:10px; width:97%; clear:both; margin-left:15px;">
							<strong>					
								充值卡统计
							</strong>
				<table class="table table-hover table-striped table-bordered" style="width:100%;border: 1px solid #ddd;">
				<thead>	
					<tr>
						<th colspan="5" class="warning">(充值卡的充值和提现金额已经在充值和提现中统计，这里的数字只是单独列出，方便查看，不需要计入财务报表)</th>
					</tr>
					<tr>
						<th class="text-center w-100px">币种</th>
                        <th class="text-center w-200px">充值单数</th>
						<th class="text-center w-200px">充值数量</th>
						<th class="text-center w-200px">提现单数</th>
						<th class="text-center w-200px">提现数量</th>
					</tr>
				</thead>
				<tbody>	
					<tr>
						<td class="text-right ">VRC</td>
						<td class="text-right "><a href="/newadmin.php/Home/List/cardShow/?userid=&amp;coinid=5&amp;stime=2016-03-22&amp;etime=2016-04-21">0</a></td>
                        <td class="text-right ">0
						</td>
                        <td class="text-right ">0</td>
                        <td class="text-right ">0
						</td>
					</tr><tr>
						<td class="text-right ">CNY</td>
						<td class="text-right "><a href="/newadmin.php/Home/List/cardShow/?userid=&amp;coinid=1&amp;stime=2016-03-22&amp;etime=2016-04-21">0</a></td>
                        <td class="text-right ">0
						</td>
                        <td class="text-right ">0</td>
                        <td class="text-right ">0
						</td>
					</tr><tr>
						<td class="text-right ">FHG</td>
						<td class="text-right "><a href="/newadmin.php/Home/List/cardShow/?userid=&amp;coinid=8&amp;stime=2016-03-22&amp;etime=2016-04-21">0</a></td>
                        <td class="text-right ">0
						</td>
                        <td class="text-right ">0</td>
                        <td class="text-right ">0
						</td>
					</tr><tr>
						<td class="text-right ">NEC</td>
						<td class="text-right "><a href="/newadmin.php/Home/List/cardShow/?userid=&amp;coinid=12&amp;stime=2016-03-22&amp;etime=2016-04-21">0</a></td>
                        <td class="text-right ">0
						</td>
                        <td class="text-right ">0</td>
                        <td class="text-right ">0
						</td>
					</tr><tr>
						<td class="text-right ">BLK</td>
						<td class="text-right "><a href="/newadmin.php/Home/List/cardShow/?userid=&amp;coinid=13&amp;stime=2016-03-22&amp;etime=2016-04-21">0</a></td>
                        <td class="text-right ">0
						</td>
                        <td class="text-right ">0</td>
                        <td class="text-right ">0
						</td>
					</tr><tr>
						<td class="text-right ">BC</td>
						<td class="text-right "><a href="/newadmin.php/Home/List/cardShow/?userid=&amp;coinid=14&amp;stime=2016-03-22&amp;etime=2016-04-21">0</a></td>
                        <td class="text-right ">0
						</td>
                        <td class="text-right ">0</td>
                        <td class="text-right ">0
						</td>
					</tr>					
				</tbody>
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
$(".sub-menu").eq(11).show();
$(".sub-menu").eq(11).children("li").eq(1).addClass("on");
</script>