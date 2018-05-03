<%@ page language="java" pageEncoding="utf-8" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta charset="utf-8">
    <title>中国鲜花礼品网-会员中心</title>
    <meta name="description" content="会员中心-中国鲜花礼品网,专业提供鲜花礼品网上购物,全国连锁网上花店,鲜花蛋糕礼品3小时送达1000多城市">
    <meta name="keywords" content="中国鲜花礼品网会员中心">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit|ie-comp">
    
    

    
    <link rel="icon" href="../assets/Images/favicon.ico" mce_href="/favicon.ico" type="image/x-icon">
    
    
    
    
    
    


    <!--[if lt IE 9]>
        <script src="//img02.hua.com/pc/assets/js/html5shiv.min.js"></script>
    <![endif]-->
    <!-- Google Tag Manager -->
    
    <!-- End Google Tag Manager -->

<link rel="stylesheet" type="text/css" href="../assets/Css/reviewList.css" media="all">
</head>
<body class="home">
    <!-- 顶部导航 -->

    <div class="site-nav">
        <div class="container">

            <ul class="site-nav-l">
                <li class="menu">
                    <a href="/" onClick="addfavorite();return false;"><span class="ico ico-star"></span>收藏鲜花网(hua.com)</a>
                </li>
                <li class="menu dropdown">
                    <a href="javascript:void(0)" data-hover="dropdown" data-delay="0"><span class="ico ico-weixin"></span>关注微信</a>
                    <div class="dropdown-menu dropdown-weixin">
                        <img src="../assets/Picture/wechat_qrcode.jpg" height="124" width="124">
                        <p>扫码关注<br>回复"礼物" 更多惊喜！</p>
                    </div>
                </li>
                <li class="menu dropdown">
                    <a href="/mobile/" data-hover="dropdown" data-delay="0" target="_blank"><span class="ico ico-mobile"></span>花礼网app</a>
                    <div class="dropdown-menu dropdown-weixin">
                        <img src="../assets/Picture/app_qrcode.jpg" height="124" width="124">
                        <p>新人专享100元APP礼包</p>
                    </div>
                </li>
            </ul>
            <ul class="site-nav-r">
                <!--登陆状态信息显示start-->
                <li class="menu login" id="LoginInfo">

                    <c:if test="${sessionScope.seller==null}">
                        <c:if test="${sessionScope.customer!=null}">
                            <a href="${pageContext.request.contextPath}/customer/home" rel="nofollow" id="btn-login">${sessionScope.customer.name}</a>
                            <a href="${pageContext.request.contextPath}/index/logout?identity=customer" rel="nofollow" id="btn-login">注销</a>
                        </c:if>
                        <c:if test="${sessionScope.customer==null}">
                            <a href="${pageContext.request.contextPath}/index/login?identity=customer" rel="nofollow" id="btn-login">你好，请登录</a><a href="${pageContext.request.contextPath}/index/register?identity=customer" rel="nofollow" id="btn-reg">注册</a>
                        </c:if>
                    </c:if>

                </li>
                <!--登陆状态信息显示end-->
                <li class="site-nav-pipe">|</li>
                <!--我的花礼信息显示start-->
                <c:if test="${sessionScope.customer==null}">
                    <c:if test="${sessionScope.seller!=null}">
                        <li class="menu dropdown">
                            <a href="${pageContext.request.contextPath}/seller/home" rel="nofollow">${sessionScope.seller.name}</a>
                        </li>
                        <li class="menu dropdown">
                            <a href="${pageContext.request.contextPath}/index/logout?identity=seller" rel="nofollow">注销</a>
                        </li>
                    </c:if>


                    <c:if test="${sessionScope.seller==null}">
                        <li class="menu dropdown">
                            <a href="${pageContext.request.contextPath}/index/login?identity=seller" rel="nofollow" >商家登录</a>
                        </li>

                        <li class="site-nav-pipe">|</li>
                        <li class="menu dropdown">
                            <a href="${pageContext.request.contextPath}/index/register?identity=seller" rel="nofollow" data-hover="dropdown" data-delay="0" target="_blank">商家入驻</a>
                        </li>
                    </c:if>
                </c:if>

                <li class="site-nav-pipe">|</li>
                <!--购物车信息显示start-->
                <li class="menu dropdown">
                    <a href="" data-hover="dropdown" data-delay="0" rel="nofollow" target="_blank"><span class="ico ico-cart"></span>购物车<span class="text-primary" id="gwcCount"></span><span class="glyphicon glyphicon-triangle-bottom"></span></a>
                    <div class="dropdown-menu dropdown-cart" id="CartInfo"></div>
                </li><!--购物车信息显示end-->
                <li class="site-nav-pipe">|</li>
                <li class="menu slogan">
                    中国鲜花礼品网:中国鲜花网领先品牌
                </li>
            </ul>
        </div>
    </div>
    <!-- 顶部导航 End -->
    <!-- 头部 -->
    <header>
        <div class="logo">
            <h1><a href="https://www.hua.com/" class="logo-bd">会员中心</a></h1>
            <i></i>
            
        <h2>中国鲜花礼品网 始于2005，简称花礼网</h2>
    

        </div>
        <div class="search">
            <form name="i_search" method="post" action="https://www.hua.com/search/">
                <div class="input-group">
                    <input value="" name="keyword" class="form-control" placeholder="商品关键词" type="text">
                    <span class="input-group-btn">
                        <button class="btn btn-primary" type="button" onclick="this.form.submit()">搜索</button>
                    </span>
                </div>
            </form>
            
    

        </div>
        <div class="service">
            <span class="ico ico-phone"></span>400-889-8188
            <a href="https://www.hua.com/chat/" target="_top"><span class="ico ico-headset"></span>在线客服</a>
        </div>
    </header>
    <!-- 头部 End -->
    
<!-- 导航 -->
<nav class="common">
    <div class="container">
        <div class="categorys dropdown">
            <h3 class="categorys-title" data-hover="dropdown" data-delay="0">
                <a href="https://www.hua.com/all.html"><span class="pull-right glyphicon glyphicon-menu-down"></span>全部商品导购</a>
            </h3>
            <div class="dropdown-menu dropdown-cate">
                <h4><a href="https://www.hua.com/flower/">鲜花</a></h4>
                <ul class="cate-list list-inline">
                    <li><a href="https://www.hua.com/aiqingxianhua/">爱情鲜花</a></li>
                    <li><a href="https://www.hua.com/youqingxianhua/">友情鲜花</a></li>
                    <li><a href="https://www.hua.com/shengriliwu/" target="_top">生日鲜花</a></li>
                    <li><a href="https://www.hua.com/songzhangbeixianhua/">问候长辈</a></li>
                    <li><a href="https://www.hua.com/zhufuqinghexianhua/">祝贺鲜花</a></li>
                    <li><a href="https://www.hua.com/hunqingxianhua/">婚庆鲜花</a></li>
                    <li><a href="https://www.hua.com/tanbingweiwenxianhua/">探病慰问</a></li>
                    <li><a href="https://www.hua.com/daoqianxianhua/">道歉鲜花</a></li>
                    <li><a href="https://www.hua.com/businessFlower/kaiyehualan/">开业花篮</a></li>
                </ul>
                <h4><a href="https://www.hua.com/yongshenghua/">永生花</a></h4>
                <ul class="cate-list list-inline">
                    <li><a href="https://www.hua.com/yongshenghua/yongshenghua_box.html">经典花盒</a></li>
                    <li><a href="https://www.hua.com/yongshenghua/yongshenghua_large.html">巨型玫瑰</a></li>
                    <li><a href="https://www.hua.com/yongshenghua/yongshenghua_lavender.html">薰衣草</a></li>
                </ul>

                <h4><a href="https://www.hua.com/cake/">蛋糕</a></h4>
                <ul class="cate-list list-inline">
                    <li><a href="https://www.hua.com/cake/ganso/">元祖</a></li>
                    <li><a href="https://www.hua.com/cake/21cake/">廿一客蛋糕</a></li>
                    <li><a href="https://www.hua.com/cake/lecake/">诺心蛋糕</a></li>
                    <li><a href="https://www.hua.com/cake/incake/">INCAKE</a></li>
                    <li><a href="https://www.hua.com/cake/beisike/">贝思客蛋糕</a></li>
                    <li><a href="https://www.hua.com/cake/boncake/">BONCAKE蛋糕</a></li>
                    <li><a href="https://www.hua.com/cake/mcake/">Mcake蛋糕</a></li>
                    <li><a href="https://www.hua.com/cake/waffleboy/">窝夫小子</a></li>
                    <li><a href="https://www.hua.com/cake/micamika/">米卡米卡</a></li>
                    <li><a href="https://www.hua.com/cake/faxini/">法西妮蛋糕</a></li>
                    <li><a href="https://www.hua.com/cake/xfxb/">幸福西饼</a></li>
                    <li><a href="https://www.hua.com/cake/vcake/">Vcake蛋糕</a></li>
                    <li><a href="https://www.hua.com/cake/yipinxuan/">一品轩</a></li>
                    <li><a href="https://www.hua.com/cake/heartcheesecake/">心之和蛋糕</a></li>
                    <li><a href="https://www.hua.com/cake/allcitycake/">全国品牌</a></li>
                </ul>
                <h4><a href="https://www.hua.com/gifts/">礼品</a></h4>
                <ul class="cate-list list-inline">
                    <li><a href="https://www.hua.com/livingflower/">泰国保鲜花</a></li>
                    <li><a href="https://www.hua.com/gifts/goldenflower/">金箔花</a></li>
                    <li><a href="https://www.hua.com/gifts/musicbox/">音乐盒</a></li>
                    <li><a href="https://www.hua.com/gifts/crystallaser/">水晶内雕</a></li>
                    <li><a href="https://www.hua.com/gifts/cosmeticmirror/">化妆镜</a></li>
                    <li><a href="https://www.hua.com/gifts/kingking/">香薰系列</a></li>
                    <li><a href="https://www.hua.com/toys/">品牌公仔</a></li>
                    <li><a href="https://www.hua.com/gifts/bestlife/">音乐睡枕</a></li>
                    <li><a href="https://www.hua.com/katonghuashu/">卡通花束</a></li>
                </ul>
                <h4><a href="https://www.hua.com/Plant/">绿植</a></h4>
                <ul class="cate-list list-inline">
                    <li><a href="https://www.hua.com/Plant/greenplant/">绿色植物</a></li>
                    <li><a href="https://www.hua.com/Plant/potflower/">盆栽花卉</a></li>
                </ul>
            </div>
        </div>
        <ul class="nav">
            <li><a href="https://www.hua.com/">首页</a></li>
            <li><a href="https://www.hua.com/flower/">鲜花</a></li>
            <li><a href="https://www.hua.com/yongshenghua/">永生花</a></li>
            <li><a href="https://www.hua.com/cake/">蛋糕</a></li>
            <li><a href="https://www.hua.com/gifts/">礼品</a></li>
            <li><a href="https://www.hua.com/huayu/">花语大全</a></li>
        </ul>
    </div>
</nav>
<!-- 导航 End -->
<div class="container">
    <div class="breadcrumbs"><a href="https://www.hua.com/">首页</a> &gt; <a href="https://www.hua.com/Member/MemberCenter/">会员中心</a></div>
    <div class="wrapper about">
        


<div class="pull-left w970 l230">
    <div class="box-border member-r">

        <div class="order-wrap">
            <div class="title">
                <h3>我的评价</h3>
            </div>

            <!-- 我的评价 -->
            <div class="content order-panel">
                <div style="clear: both;"></div>
                <div>
                    <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tbody><tr>
                            <td>

                                    <div align="center"><font color="#CC0000">暂无评价记录！</font><br><br>您的鼓励和建议，是我们前进的动力，我们期待您的评价！<br>欢迎您点击<a href="https://www.hua.com/Member/Order/"><u>查看所有历史订单</u></a>，对已配送订单做出评价，谢谢！</div>
                                <div class="digg">
                                    
                                </div>
                            </td>
                        </tr>
                    </tbody></table>
                </div>
            </div>

            <!-- 我的评价 End -->
        </div>
    </div>
</div>
        <div class="pull-left w210 r970" id="containerBody">
            <div class="box-border">
                <div class="hd"><b></b>会员中心</div>
                <ul class="bd">
                    <li id="memberCenterItem"><a href="https://www.hua.com/Member/MemberCenter/" style="font-size: 12px;"><span class="ico ico-member1"></span>会员首页</a></li>
                    <li>
                        <span class="ico ico-member2"></span>订单信息
                        <ul>
                            <li id="myOrderItem"><a href="https://www.hua.com/Member/Order/">我的订单</a></li>
                            <li id="cancelOrderItem"><a href="https://www.hua.com/Member/Order/?zt=-1">已取消订单</a></li>
                            <li class="active" id="myEvaluationItem"><a href="https://www.hua.com/Member/Order/ReviewList">我的评价</a></li>
                            <li id="myAttentionItem"><a href="https://www.hua.com/Member/Order/MyAttention">我的收藏</a></li>

                        </ul>
                    </li>
                    <li>
                        <span class="ico ico-member3"></span>积分管理
                        <ul>
                            <li id="myScoresItem"><a href="https://www.hua.com/Member/Payment/MyScores">我的积分</a></li>
                            <li id="scoresExchangeItem"><a href="https://www.hua.com/Member/Payment/ScoresExchange">积分兑换</a></li>
                        </ul>
                    </li>
                    <li>
                        <span class="ico ico-member4"></span>账户设置
                        <ul>
                            <li id="personInfoItem"><a href="https://www.hua.com/Member/AccountSetting/PersonInfoManage">个人信息</a></li>
                            <li id="addressListItem"><a href="https://www.hua.com/Member/AccountSetting/AddressList">常用收货人</a></li>
                            <li id="changePwdItem"><a href="https://www.hua.com/Member/AccountSetting/ChangePwd">修改密码</a></li>
                            <li id="changeEmailItem"><a href="https://www.hua.com/Member/AccountSetting/ChangeEmail">修改登录名</a></li>

                            <li id="remindItem"><a href="https://www.hua.com/Member/Remind/">生日/纪念日提醒</a></li>
                            <li id="guanlian"><a href="https://www.hua.com/Member/AccountSetting/Bind">关联QQ/微信账号</a></li>
                        </ul>
                    </li>
                    <li>
                        <span class="ico ico-member5"></span>付款设置
                        <ul>
                            <li id="myVirtualAccountItem"><a href="https://www.hua.com/Member/Payment/MyVirtualAccount">我的虚拟账户</a></li>
                            <li id="myCouponItem"><a href="https://www.hua.com/Member/Payment/MyCoupon">我的优惠券</a></li>
                            <li id="balanceFillItem"><a href="https://www.hua.com/Member/Payment/BalanceFill">在线补款</a></li>
                        </ul>
                    </li>
                    <li>
                        <span class="ico ico-member6"></span>客户服务
                        <ul>
                            <li id="guestMessageItem"><a href="https://www.hua.com/Member/CustomerService/GuestMessage">客服留言</a></li>
                            <li id="tsGuestMessageItem"><a href="https://www.hua.com/Member/CustomerService/GuestMessage?type=ts">投诉留言</a></li>
                            <li id="chatItem"><a href="https://www.hua.com/Chat/">在线客服</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

    <!--底部-->
    <!-- 尾部导航 -->
    <div class="footer-nav">
        <a href="https://www.hua.com/">首页</a> <b>|</b> <a href="https://www.hua.com/profile/about.htm" target="_top">关于我们</a> <b>|</b> <a href="https://www.hua.com/profile/media.html" target="_top">媒体报道</a> <b>|</b> <a href="https://www.hua.com/profile/contact.htm" target="_top">联系方式</a> <b>|</b> <a href="https://www.hua.com/qiyetuangou/" target="_top">企业团购</a> <b>|</b><a href="https://www.hua.com/liansuo/" target="_top">花店入驻</a><b>|</b>  <a href="https://www.hua.com/profile/links.htm" target="_top">友情链接</a> <b>|</b> <a href="https://www.hua.com/member/payment/balancefill" target="_top">在线补款</a> <b>|</b> <a class="last-child" href="https://www.hua.com/profile/why_choose_us.htm" target="_top">为什么选择中国鲜花礼品网</a>
    </div>
    <!-- 尾部导航 End -->
    <!-- 通用尾部 -->
    <footer>
        <div class="auth">
            <!-- <span style="margin-right:8px;">
                <script src="http://kxlogo.knet.cn/seallogo.dll?sn=e15041744030058395oqbo000000&amp;size=4"></script>
            </span> -->
            <a href="https://ss.knet.cn/verifyseal.dll?sn=e15041744030058395oqbo000000&amp;ct=df&amp;a=1&amp;pa=0.8817607406526804" target="_top"><img style="height: 40px;" src="../assets/Images/cxwz.png"></a>
            <a href="https://search.szfw.org/cert/l/CX20130306002238002312" target="_top"><img src="../assets/Images/cxwz.gif" height="40" width="112"></a>
            <a href="http://www.anquan.org/authenticate/cert/?site=www.hua.com&amp;at=realname" rel="nofollow" target="_top"><img src="../assets/Images/smyz.gif" height="40" width="106"></a>
<img src="../assets/Images/slogan.png" height="50" width="212">            <a href="https://www.hua.com/member/payment/fillbyalipay?order_no=&amp;total_fee=" rel="nofollow" target="_top"><img src="../assets/Images/zfb.gif" height="49" width="96"></a>
            <a href="https://www.hua.com/profile/news_20111110.htm" target="_top"><img src="../assets/Images/100.jpg" height="49" width="150"></a>
            <a href="https://www.hua.com/profile/ICP.htm" rel="nofollow" target="_top"><img src="../assets/Images/bico1.jpg" alt="ICP" height="46" width="35"></a>
            <!--             <a href="http://www.sznet110.gov.cn/webrecord/innernet/Welcome.jsp?bano=4403301920636" rel="nofollow" target="_blank"><img alt="网警" src="//img02.hua.com/pc/assets/img/bico2.jpg" height="46" width="35"></a> -->
            <a href="http://szcert.ebs.org.cn/fab6de6a-ff80-4e63-89e4-cd531170c256" rel="nofollow" target="_top"><img alt="工商网监" src="../assets/Images/bico4.jpg" height="46" width="35"></a>
            <a href="http://www.sznet110.gov.cn/netalarm/index.jsp" rel="nofollow" target="_top"><img src="../assets/Images/bico3.jpg" alt="网安" height="46" width="35"></a>
        </div>
        <p><a href="https://www.hua.com/profile/ChinaFlowerAssociation.htm" rel="nofollow" target="_top" title="中国花卉协会会员">中国花卉协会会员</a> <a href="https://www.hua.com/profile/chinaECA.htm" rel="nofollow" target="_top">中国电子商务协会会员</a> ICP经营许可证：<a href="https://www.hua.com/profile/ICP.htm" rel="nofollow" target="_top">粤B2-20050744</a> <b>|</b> <a href="http://www.miibeian.gov.cn/" rel="nofollow" target="_top">粤ICP备09171662号</a> <span class="ico beian"></span>粤公网安备44030502000373号 Copyright © 2005-2018</p>
        <p> 花礼网 （中国鲜花礼品网） <a href="https://www.hua.com/">www.hua.com</a><span> 深圳市百易信息技术有限公司</span> 会员中心</p>
    </footer>
    <!-- 通用尾部 End -->
    <!-- 弹出窗口-->
    
    <!-- 弹出窗口end-->
    
        
    
    
    

        
    
    
    <!-- Global site tag (gtag.js) - Google Analytics -->
    
    
    <!-- Google Tag Manager (noscript) -->
    
    <!-- End Google Tag Manager (noscript) -->

</body>
</html>
