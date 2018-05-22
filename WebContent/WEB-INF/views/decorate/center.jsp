<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../common/dialog.jsp" flush="true" />
<!DOCTYPE HTML>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>我的</title>
<link href="<c:url value='/resources/css/web/My.css'/>"  rel="stylesheet" type="text/css"/>
<link href="<c:url value='/resources/css/web/xjjj.css'/>"  rel="stylesheet" type="text/css"/>

<style>
	.headerbotton{
    border: 0px solid #fff; 
    }
</style>
</head>
<body>
 <div class="topBox">
	<div class="txPic">
		<img id="imgpic" src="<c:url value='/resources/images/web/tx.png'/>" />
	</div>
 <div class="qiandao"><a class="headerbotton" id='nickName'href="#"></a>
</div>   

<div class="twoNavBox">
	<a href="#" class="leftBox">
    	<ul>
            
            <li class="zcFont">总收益</li>
            <li class="zcFont">￥<span id="coin"></span><i></i></li>
        </ul>
    </a>
    <a href="<c:url value='/decorate/wallet.html?id=${expId }'/>">
    	<ul>
           
            <li class="zcFont">余额</li>
            <li class="qbFont">￥<span id="money"></span></li>
        </ul>
    </a>
   
</div>
</div>
<div class="navListBox">
	<ul>
	     <a href="<c:url value='/decorate/mydata.html?id=${expId }'/>"><li>
            <p class="fLeft"><img src="<c:url value='/resources/images/web/my/70.png'/>" /></p>
            <div class="fRight rightTextBox lastBox">
            	<span class="mycj">我的资料</span>
                <span><img src="<c:url value='/resources/images/web/memberjt.png'/>" /></span>
            </div>
        </li></a>   
    	<a href="<c:url value='/decorate/invite.html?id=${expId }'/>"><li>
            <p class="fLeft"><img src="<c:url value='/resources/images/web/my/10.png'/>" /></p>
            <div class="fRight rightTextBox">
            	<span class="mycj">我的邀请</span>
                <span><img src="<c:url value='/resources/images/web/memberjt.png'/>" /></span>
            </div>
        </li></a>
<!--         id="voucher" -->
         <a href="<c:url value='/decorate/voucher.html?id=${expId }'/>" ><li>
            <p class="fLeft"><img src="<c:url value='/resources/images/web/my/20.png'/>" /></p>
            <div class="fRight rightTextBox">
            	<span class="mycj">我的券</span>
                <span><img src="<c:url value='/resources/images/web/memberjt.png'/>" /></span>
            </div>
        </li></a>
        
        <a href="<c:url value='/decorate/message.html?id=${expId }'/>"><li>
            <p class="fLeft"><img src="<c:url value='/resources/images/web/my/40.png'/>" /></p>
            <div class="fRight rightTextBox">
            	<span class="mycj">我的消息<b class="yuan" style="display: none;"></b></span>
                <span><img src="<c:url value='/resources/images/web/memberjt.png'/>" /></span>
            </div>
        </li></a>
    </ul>
    <ul>
        <a href="<c:url value='/decorate/newhelp.html'/>"><li>
            <p class="fLeft"><img style="height: 20px; width: 15px;" src="<c:url value='/resources/images/web/my/50.png'/>" /></p>
            <div class="fRight rightTextBox">
            	<span class="mycj">新手指南</span>
                <span><img src="<c:url value='/resources/images/web/memberjt.png'/>" /></span>
            </div>
        </li></a>
        <a href="<c:url value='/decorate/about.html'/>"><li>
            <p class="fLeft"><img src="<c:url value='/resources/images/web/my/60.png'/>" /></p>
            <div class="fRight rightTextBox">
            	<span class="mycj">关于我们</span>
                <span><img src="<c:url value='/resources/images/web/memberjt.png'/>" /></span>
            </div>
        </li></a>
    
    </ul>
</div>
<!--底部导航-->
<div class="he60"></div>
	<div class="bottom">
	  <ul>
	      <a href="<c:url value='/decorate/index.html?id=${expId }'/>"><li class="mokuai"><img src="<c:url value='/resources/images/web/home_1.png'/>"><p class="he20">首页</p></li></a>
	      <a href="<c:url value='/decorate/rank.html?id=${expId }'/>"><li class="mokuai"><img src="<c:url value='/resources/images/web/faxian_1.png'/>"><p class="he20">排名</p></li></a>
	      <a href="<c:url value='/decorate/vouchehome.html?id=${expId }'/>"><li class="mokuai"><img src="<c:url value='/resources/images/web/bottomIcon02-2.png'/>"><p class="he20">福券</p></li></a>	    
	      <a href="<c:url value='/decorate/center.html?id=${expId }'/>"><li class="mokuai"><img src="<c:url value='/resources/images/web/my_1.png'/>"/><p class="he20">我的</p></li></a>
	  </ul>
	</div>
<script type="text/javascript" src="<c:url value='/resources/js/jquery-1.8.2.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/resources/js/layer.m/layer.m.js'/>"></script>
<script type="text/javascript" src="<c:url value='/resources/js/fileCompress/mobileBUGFix.mini.js'/>"></script>
<script type="text/javascript" src="<c:url value='/resources/js/fileCompress/compress.js'/>"></script>
<script type="text/javascript" src="<c:url value='/resources/js/common/common.js'/>"></script>
<script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script type="text/javascript" src="<c:url value='/resources/js/common/Wxjsdkutil.js'/>"></script>
<script type="text/javascript">
	$(document).ready(function(){
		post("/expdecorateuser/findUserInfoByUserIdOrOpenId",{},false).then(function(data){
			$("#money").html(data.balancePrice);
			$("#coin").html(data.countPrice);
			$("#nickName").html(data.nickName);
			$("#imgpic").attr("src",data.headImg);
			if(data.balancePrice >0){
				$(".yuan").show();
			}
		});
		$("#voucher").on("click",function(){
			showAlert("暂未实现");
		});
	});
</script>
<script type="text/javascript">
	var shareData = {
		title: '营销活动',
	    desc: '营销活动', 
	    link: 'http://'+location.host+'/wxService/decorate/index.html?id=${expId }', 
	    imgUrl: 'http://'+location.host+'/wxService/resources/images/web/memberjt.png', 
	    requrl: 'http://'+location.host+'/wxService/share/sharePrepare',
		param:location.href
    };
	$(document).ready(function(){
		 hideOptionMenu(shareData);
	}); 
</script>
</body>
</html>
