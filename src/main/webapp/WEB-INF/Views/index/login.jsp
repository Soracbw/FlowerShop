<%@ page language="java" pageEncoding="utf-8" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>会员登录-花礼网</title>
    <meta name="description" content="鲜花网,选中国鲜花礼品网(花礼网)-中国鲜花网领先品牌,Hua.com专注鲜花速递服务10年,销量稳居鲜花礼品类网站首位！鲜花网提供24小时订鲜花，同城送花、异地送花服务,网上订花后最快3小时即可将鲜花快递上门,送花网站覆盖中国900多城市！" />
    <meta name="keywords" content="中国鲜花礼品网,鲜花,鲜花网,鲜花快递,网上订花送花,中国鲜花网,鲜花礼品,网上订花,送花网站" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit|ie-comp">
    
    <script type="text/javascript" src="../assets/Scripts/749f72a08ee9437d8ccfd302db0539d3.js"></script>
    <link rel="icon" href="/favicon.ico" mce_href="/favicon.ico" type="image/x-icon">
    
    <link type="text/css" rel="stylesheet" href="../assets/Css/common.css">
    <link type="text/css" rel="stylesheet" href="../assets/Css/public.css">
    
    <style type="text/css">
        .logMethod {
            float: right;
            margin-right: 38px;
            color: #ff6a00;
            font-size: 12px;
        }

        a.logMethod {
            text-decoration: none;
        }

            a.logMethod:hover {
                text-decoration: underline;
            }

        .login-box .login-panel .login-notice {
            min-height: 1px;
        }

        .SMScodes {
            float: left;
        }

        .email_autocomplete1, .phoneNum, .SMScodes {
            position: relative;
            display: inline-block;
        }

            .email_autocomplete1 input, .phoneNum input, .SMScodes input {
                width: 267px;
                height: 40px;
                padding: 10px;
                border: 1px solid #d2d2d2;
            }

            .SMScodes input {
                width: 145px;
            }

        .btnSend, #prompt_info {
            height: 40px;
            margin-left: 7px;
            width: 115px;
            border: 0;
            background: #FFAD0D;
            border-radius: 5px;
            color: #fff;
            margin-left: 3px\9;
        }

        .btnSend {
            vertical-align: middle;
        }

            .btnSend:hover {
                background: #faa500;
            }

        #prompt_info {
            line-height: 40px;
            text-align: center;
            display: inline-block;
            float: right;
            background: #bbb;
        }

        .email_autocomplete1 ul {
            margin: 0;
            padding: 0;
            position: absolute;
            left: 0px;
            border: #ddd0d0 1px solid;
            background-color: #fefefe;
            overflow: hidden;
            z-index: 999;
        }

            .email_autocomplete1 ul .curr {
                background-color: #e7f4fd;
            }

            .email_autocomplete1 ul .note {
                color: #777777;
                cursor: auto;
            }

            .email_autocomplete1 ul li {
                margin: 0;
                padding: 0;
                height: 20px;
                line-height: 20px;
                list-style: none;
                padding-left: 5px;
                cursor: pointer;
            }
            .login-box .login-panel .btn{margin-top: 31px;}
            .other-login-ways{margin: 20px 38px 0;}
            .other-login-ways ul{list-style: none;font-size: 12px;overflow: hidden;padding: 0;}
            .other-login-ways li{float: left;}
            .other-login-ways .line{padding: 0 10px;}
            .csqh{
                margin-top: -9px;
                font-size: 26px;
                color: #444;
            }
            .login_q span{
                display: inline-block;
                border: 1px solid #fe6600;
                border-radius: 2px;
                font-size: 12px;
                color: #fe6600;
                display: none;
                position: relative;
                padding: 0 2px;
            }
            .login_q span:before{
                content: '';
                display: inline-block;
                border-left: 5px solid transparent;
                border-right: 5px solid transparent;
                border-bottom: 9px solid #fe6600;
                position: absolute;
                top: -9px;
                left: 5px;
            }
            .login_q span:after{
                content: '';
                display: inline-block;
                border-left: 5px solid transparent;
                border-right: 5px solid transparent;
                border-bottom: 9px solid #fff;
                position: absolute;
                top: -8px;
                left: 5px;
            }
            .login_q .qq_kuaijie:before{
                left: 52px;
            }
            .login_q .qq_kuaijie:after{
                left: 52px;
            }
            .login_q .zfb_kuaijie:before{
                left: 101px;
            }
            .login_q .zfb_kuaijie:after{
                left: 101px;
            }
    </style>


    <!--[if lt IE 9]>
        <script src="../assets/Scripts/html5shiv.min.js"></script>
    <![endif]-->
    <!-- Google Tag Manager -->
    <script>
(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-KS4PTHC');</script>
    <!-- End Google Tag Manager -->
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
                    <a href="/Passport/Login/" rel="nofollow" id="btn-login">你好，请登录</a><a href="/Passport/Register/" rel="nofollow" id="btn-reg">注册</a>
                </li>
                <!--登陆状态信息显示end-->
                <li class="site-nav-pipe">|</li>
                <li class="menu">
                    <a href="/help/ordercx/" rel="nofollow" target="_blank">订单查询</a>
                </li>
                <li class="site-nav-pipe">|</li>
                <!--我的花礼信息显示start-->
                <li class="menu dropdown">
                    <a href="/member/" rel="nofollow" data-hover="dropdown" data-delay="0" target="_blank">我的花礼</a>
                </li><!--我的花礼信息显示end-->
                <li class="site-nav-pipe">|</li>
                <li class="menu dropdown">
                    <a href="/help/" data-hover="dropdown" data-delay="0" target="_blank">客户服务<span class="glyphicon glyphicon-triangle-bottom"></span></a>
                    <div class="dropdown-menu dropdown-service">
                        <a href="/member/payment/balancefill" target="_blank">在线付款</a>
                        <a href="/help/" target="_blank">帮助中心</a>
                        <a href="/help/afterservice.htm" target="_blank">售后服务</a>
                        <a href="/help/sendRange.htm" target="_blank">配送范围</a>
                        <a href="/chat/" target="_blank">留言反馈</a>
                    </div>
                </li>
                <li class="site-nav-pipe">|</li>
                <!--购物车信息显示start-->
                <li class="menu dropdown">
                    <a href="/shopping/showcart/" data-hover="dropdown" data-delay="0" rel="nofollow" target="_blank"><span class="ico ico-cart"></span>购物车<span class="text-primary" id="gwcCount"></span><span class="glyphicon glyphicon-triangle-bottom"></span></a>
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
            <h1><a href="/" class="logo-bd">中国鲜花礼品网(花礼网)</a></h1>
            <i></i>
            
<div class="delivery-city">
    <div class="dropdown csqh">
        欢迎<c:if test='${identity=="customer"}'>顾客</c:if>
        <c:if test='${identity=="seller"}'>商家</c:if>
        <c:if test='${identity=="admin"}'>管理员</c:if>登录

    </div>
</div>

        </div>
        <div class="search">
            <form name="i_search" method="post" action="/search/">
                <div class="input-group">
                    <input name="keyword" type="text" class="form-control" placeholder="商品关键词">
                    <span class="input-group-btn">
                        <button class="btn btn-primary" type="button" onClick="this.form.submit()">搜索</button>
                    </span>
                </div>
            </form>
            
        </div>
        <div class="service">
            <span class="ico ico-phone"></span>400-889-8188
            <a href="/chat/" target="_blank"><span class="ico ico-headset"></span>在线客服</a>
        </div>
    </header>
    <!-- 头部 End -->

<div class="login-wrapper">
    <div class="container">
        <div class="login-box">
            <!-- 登录/注册tab -->
            <ul class="login-tabs">
                <li class="active"><a href="javascript:void(0)">登录</a></li>
                <li><a href="/Passport/Register/">注册</a></li>
            </ul>
            <!-- 登录/注册tab End -->
            <a href="javascript:void(0);" class="logMethod">使用手机验证码登录</a><div style="clear:both;"></div>
            <form name="myForm" id="myForm" action="/Passport/Login/" method="post" style="display:block;">
                <!--不同身份在不同数据库中查询-->
                <input type="hidden" name="identity" value="${identity}">
                <div class="tab-content">
                    <!-- 普通登录 -->
                    <div id="loginPane" class="tab-pane login-panel fade in active">
                        <!--登录信息提示区begin-->
                        <div class="login-notice" id="Enr">
                        </div>
                        <!--登录信息提示区 end-->
                        <div class="form-group">
                            <label class="sr-only" for="InputUser">用户名</label>
                            <div class="input-group">
                                <div class="input-group-addon"><span class="ico ico-user"></span></div>
                                <div class="email_autocomplete1">
                                    <input name="UserName" autocomplete="off" placeholder="E-mail地址/手机号" nodetype="email" type="text" id="UserName" config="{width:267,height:40}" />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="InputPassword">密码</label>
                            <div class="input-group">
                                <div class="input-group-addon"><span class="ico ico-lock"></span></div>
                                <div class="email_autocomplete1"><input name="PassWord" autocomplete="off" placeholder="用户密码" type="password" id="PassWord" /></div>
                            </div>
                        </div>

                            <input id="ValidCode" name="ValidCode" value="" type="hidden" />

                        <div class="checkbox">
                            <input type="hidden" name="DoIt" value="ok" />
                            <input type="hidden" id="backUrl" name="backUrl" value="/" />
                            <a class="pull-right" href="/Member/Password/Forgot" target="_blank">忘记密码？</a>
                        </div>

                        <button class="btn btn-primary btn-lg btn-block" type="button"  onclick="normalLogin()" id="dosubmit">登　录</button>
                    </div>
                    <!-- 普通登录 End -->
                </div>
            </form>
            <!-- 手机号获取验证码登录 begin-->
            <form id="myForm2" action="" method="post" style="display:none;">
                <!--不同身份在不同数据库中查询-->
                <input type="hidden" name="identity" value="${identity}" id="identity">
                <div>
                    <div class="login-panel">
                        <div class="login-notice" id="phoneErr">
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="">手机号码</label>
                            <div class="input-group">
                                <div class="input-group-addon"><span class="ico ico-user"></span></div>
                                <div class="phoneNum"><input name="phone" id="phone" autocomplete="off" placeholder="手机号" type="text"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="">短信验证码</label>
                            <div class="input-group">
                                <div class="input-group-addon"><span class="ico ico-lock"></span></div>
                                <div class="SMScodes"><input name="phoneCode" id="phoneCode" maxlength="6" autocomplete="off" placeholder="短信验证码" type="text" disabled="disabled"></div>
                                <button type="button" class="btnSend" id="getcode" onclick="sendPhoneCode()">获取验证码</button>
                            </div>
                        </div>
                        <button class="btn btn-primary btn-lg btn-block" type="button" disabled="disabled" id="sumbit_btn" onClick="loginByPhone()">登　录</button>
                    </div>
                </div>
            </form>
            <!--手机号获取验证码登录 end-->
        </div>
    </div>
</div>

<div class="modal fade com-modal" id="passwordModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">你第一次使用该手机号登录，请先验证。</h4>
            </div>
            <div class="modal-body">
                <iframe src="" width="100%" height="210" frameborder="0" id="attPage"></iframe>
            </div>
        </div>
    </div>
</div>
    <!--底部-->
    <!-- 尾部导航 -->
    <div class="footer-nav">
        <a href="/">首页</a> <b>|</b> <a href="/profile/about.htm" target="_blank">关于我们</a> <b>|</b> <a href="/profile/media.html" target="_blank">媒体报道</a> <b>|</b> <a href="/profile/contact.htm" target="_blank">联系方式</a> <b>|</b> <a href="/qiyetuangou/" target="_blank">企业团购</a> <b>|</b><a href="/liansuo/" target="_blank">花店入驻</a><b>|</b>  <a href="/profile/links.htm" target="_blank">友情链接</a> <b>|</b> <a href="/member/payment/balancefill" target="_blank">在线补款</a> <b>|</b> <a class="last-child" href="/profile/why_choose_us.htm" target="_blank">为什么选择中国鲜花礼品网</a>
    </div>
    <!-- 尾部导航 End -->
    <!-- 通用尾部 -->
    <footer>
        <div class="auth">
            <!-- <span style="margin-right:8px;">
                <script src="../assets/Scripts/seallogo.js"></script>
            </span> -->
            <a href="https://ss.knet.cn/verifyseal.dll?sn=e15041744030058395oqbo000000&ct=df&a=1&pa=0.8817607406526804" target="_blank"><img style="height:40px;" src="../assets/Picture/cxwz.png"></a>
            <a href="https://search.szfw.org/cert/l/CX20130306002238002312" target="_blank"><img src="../assets/Picture/cxwz.gif" height="40" width="112"></a>
            <a href="http://www.anquan.org/authenticate/cert/?site=www.hua.com&at=realname" rel="nofollow" target="_blank"><img src="../assets/Picture/smyz.gif" height="40" width="106"></a>
<img src="../assets/Picture/slogan.png" height="50" width="212" />            <a href="/member/payment/fillbyalipay?order_no=&total_fee=" rel="nofollow" target="_blank"><img src="../assets/Picture/zfb.gif" height="49" width="96"></a>
            <a href="/profile/news_20111110.htm" target="_blank"><img src="../assets/Picture/100.jpg" height="49" width="150"></a>
            <a href="/profile/ICP.htm" rel="nofollow" target="_blank"><img src="../assets/Picture/bico1.jpg" alt="ICP" height="46" width="35"></a>
            <!--             <a href="http://www.sznet110.gov.cn/webrecord/innernet/Welcome.jsp?bano=4403301920636" rel="nofollow" target="_blank"><img alt="网警" src="../assets/Picture/bico2.jpg" height="46" width="35"></a> -->
            <a href="http://szcert.ebs.org.cn/fab6de6a-ff80-4e63-89e4-cd531170c256" rel="nofollow" target="_blank"><img alt="工商网监" src="../assets/Picture/bico4.jpg" height="46" width="35"></a>
            <a href="http://www.sznet110.gov.cn/netalarm/index.jsp" rel="nofollow" target="_blank"><img src="../assets/Picture/bico3.jpg" alt="网安" height="46" width="35"></a>
        </div>
        <p><a href="/profile/ChinaFlowerAssociation.htm" rel="nofollow" target="_blank" title="中国花卉协会会员">中国花卉协会会员</a> <a href="/profile/chinaECA.htm" rel="nofollow" target="_blank">中国电子商务协会会员</a> ICP经营许可证：<a href="/profile/ICP.htm" rel="nofollow" target="_blank">粤B2-20050744</a> <b>|</b> <a href="http://www.miibeian.gov.cn" rel="nofollow" target="_blank">粤ICP备09171662号</a> <span class="ico beian"></span>粤公网安备44030502000373号 Copyright © 2005-2018</p>
        <p> <a href="/">www.hua.com</a><span> 深圳市百易信息技术有限公司</span> </p>
    </footer>
    <!-- 通用尾部 End -->
    <!-- 弹出窗口-->
    
    <!-- 弹出窗口end-->
    
        <script type="text/javascript" src="../assets/Scripts/common.js"></script>
    
    <script src="../assets/Scripts/mailautocomplete.js"></script>
    <script language="javascript">
        

        $(".logMethod").click(function () {
            if ($(this).text() == "使用账号密码登录") {
                $(this).text("使用手机验证码登录");
                $("#myForm").show();
                $("#myForm2").hide();
            } else {
                $(this).text("使用账号密码登录");
                $("#myForm").hide();
                $("#myForm2").show();
                SetPlaceHolder();
            }
        });
        function normalLogin() {
            if(!$('#UserName').val()){
                alert("请输入手机号或者邮箱！");
                return;
            }
            if(!$('#PassWord').val()){
                alert("请输入密码！");
                return;
            }
            $.ajax({
                type: 'post',
                dataType: 'json',
                data: $('#myForm').serialize(),
                url: 'checkLogin',
                success: function (msg) {
                    if (msg.status == 1) {
                        layer.msg(msg.data);
                        if($('#identity').val()=="admin")
                            window.setTimeout("window.location.href='../admin/home'", 1000);
                        else
                        window.setTimeout("window.location.href='index'", 1000);
                    } else {
                        layer.msg(msg.data);
                    }
                }
            });
        }
        //********************手机验证码登录逻辑begin********************
        function sendPhoneCode() {
            var  phone=$('#phone').val();
            var identity=$('#identity').val();
            if(!phone){
                alert("请先输入你的手机号!");
                return;
            }
            $.post("/index/getPhoneCodeOnLogin",{phone: phone, identity: identity},function (msg) {
                if(msg.status==1){
                    $("#phone").attr("readonly", "readonly");
                    $("#phoneCode").removeAttr("disabled");
                    $("#sumbit_btn").removeAttr("disabled");
                }
                layer.msg(msg.data);
            },'json')
        }
        function loginByPhone() {
            var phone=$('#phone').val();
            var phoneCode=$('#phoneCode').val();
            if(!phone){
                alert("请输入手机号！");
                return;
            }
            if(!phoneCode){
                alert("请输入验证码！");
                return;
            }
            $.ajax({
                url: 'checkLoginByPhone',
                type: 'post',
                dataType: 'json',
                data: $('#myForm2').serialize(),
                success: function (msg) {
                    if (msg.status == 1) {
                        layer.msg(msg.data);
                        if($('#identity').val()=="admin")
                            window.setTimeout("window.location.href='../admin/home'", 1000);
                        else
                            window.setTimeout("window.location.href='index'", 1000);
                    } else {
                        layer.msg(msg.data);
                    }
                }
            })
        }


    </script>
    <script src="../assets/Scripts/jquery.js"></script>
    <script type="text/javascript" src="../assets/Scripts/statesandright.js"></script>
    <script src="../assets/Scripts/layer.js"></script>

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="../assets/Scripts/dcc02026fb994a3b8f91704cff5a6a0e.js"></script>
    <script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-1701714-3');
    </script>
</body>
</html>