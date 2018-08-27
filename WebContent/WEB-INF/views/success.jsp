<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>付款成功页面</title>
<link rel="stylesheet"  type="text/css" href="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/css/amazeui.css"/>
<link href="${pageContext.request.contextPath}/static/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/static/basic/css/demo.css" rel="stylesheet" type="text/css" />

<link href="${pageContext.request.contextPath}/static/css/sustyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/static/basic/js/jquery-1.7.min.js"></script>

</head>

<body>


<!--顶部导航条 -->
<div class="am-container header">
  <ul class="message-l">
    <div class="topMessage">
     <div class="menu-hd">
       欢迎，  <img style="height: 25px;width: 25px;" src="${pageContext.request.contextPath}/static/touxiang/${user.userpicurl}">   ${user.username }
     </div></div>
  </ul>
  <ul class="message-r">
		<div class="topMessage home">
			<div class="menu-hd"><a href="${pageContext.request.contextPath}/home/show" target="_top" class="h">商城首页</a></div>
		</div>
		<div class="topMessage my-shangcheng">
			<div class="menu-hd MyShangcheng"><a href="${pageContext.request.contextPath}/user/showinformation" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
		</div>
		<div class="topMessage mini-cart">
			<div class="menu-hd"><a id="mc-menu-hd" href="${pageContext.request.contextPath}/cart/" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span></a></div>
		</div>
		<div class="topMessage favorite">
			<div class="menu-hd"><a href="${pageContext.request.contextPath}/collection/" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a></div>
	</ul>
</div>

<!--悬浮搜索框-->

<div class="nav white">
	<div class="logo"><img src="${pageContext.request.contextPath}/static/images/logo.png" /></div>
    <div class="logoBig">
      <li><img src="${pageContext.request.contextPath}/static/images/logobig.png" /></li>
    </div>
    
    <div class="search-bar pr">
        <a name="index_none_header_sysc" href="#"></a>       
        <form action="${pageContext.request.contextPath}/product/search" method="get">
        <input id="searchInput" name="keyWord" type="text" placeholder="搜索" autocomplete="off">
        <input id="ai-topsearch" class="submit" value="搜索" index="1" type="submit"></form>
    </div>     
</div>

<div class="clear"></div>



<div class="take-delivery">
 <div class="status">
   <h2>您已成功付款</h2>
   <div class="successInfo">
     <ul>
       <li>付款金额<em>${totalprice }</em></li>
       <div class="user-info">
         <p>收货人：${address.consignee}</p>
         <p>联系电话：${address.conphone}</p>
         <p>收货地址：${address.detailaddr}</p>
       </div>
             请认真核对您的收货信息，如有错误请联系客服
                               
     </ul>
     <div class="option">
       <span class="info">您可以</span>
        <a href="${pageContext.request.contextPath}/order/" class="J_MakePoint">查看<span>已买到的宝贝</span></a>
        <a href="${pageContext.request.contextPath}/orderinfo/list?orderid=${orderid}&addressid=${address.addressid}" class="J_MakePoint">查看<span>交易详情</span></a>
     </div>
    </div>
  </div>
</div>


<div class="footer" >
 <div class="footer-hd">
 <p>
 <a href="#">恒望科技</a>
 <b>|</b>
 <a href="#">商城首页</a>
 <b>|</b>
 <a href="#">支付宝</a>
 <b>|</b>
 <a href="#">物流</a>
 </p>
 </div>
 <div class="footer-bd">
 <p>
 <a href="#">关于恒望</a>
 <a href="#">合作伙伴</a>
 <a href="#">联系我们</a>
 <a href="#">网站地图</a>
 <em>© 2015-2025 Hengwang.com 版权所有. 更多模板 <a   target="_blank" title="模板之家">模板之家</a> - Collect from <a   title="网页模板" target="_blank">网页模板</a></em>
 </p>
 </div>
</div>


</body>
</html>
