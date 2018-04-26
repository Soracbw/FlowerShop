<%@ page language="java" pageEncoding="utf-8" contentType="text/html;charset=UTF-8" %>
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
        欢迎登录
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
                            <label style="display:none;">
                                <input type="checkbox" name="autologin" id="autologin" onClick="ShowAutoLogin()" value="1"> 一个月内自动登录
                            </label>
                            <a class="pull-right" href="/Member/Password/Forgot" target="_blank">忘记密码？</a>
                        </div>

                        <button class="btn btn-primary btn-lg btn-block" type="button" onClick="return Check_User_Login()" id="dosubmit">登　录</button>
                        <button class="btn btn-primary btn-lg btn-block" type="button" disabled="disabled" style="display:none;" id="submiting">登录中...</button>
                    </div>
                    <!-- 普通登录 End -->
                </div>
            </form>
            <!-- 手机号获取验证码登录 begin-->
            <form id="myForm2" action="" method="post" style="display:none;">
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
                        <div class="form-group verify" id="picCode" style="display:none;">
                            <input type="text" name="phoneLoginValidCode" id="phoneLoginValidCode" class="form-control" placeholder="验证码">
                            <a href="javascript:RefreshImage('imgCaptcha');"><img src="" id="imgCaptcha" height="25" width="100"></a>
                            <a class="refresh" href="javascript:RefreshImage('imgCaptcha');">看不清,换一张</a>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="">短信验证码</label>
                            <div class="input-group">
                                <div class="input-group-addon"><span class="ico ico-lock"></span></div>
                                <div class="SMScodes"><input name="phoneCode" id="phoneCode" maxlength="6" autocomplete="off" placeholder="短信验证码" type="text" disabled="disabled"></div>
                                <button type="button" class="btnSend" id="getcode">获取验证码</button>
                                <div id="prompt_info" style="display:none;"><span id="regetcode">90</span>秒后重新发送</div>
                            </div>
                        </div>
                        <button class="btn btn-primary btn-lg btn-block" type="button" disabled="disabled" id="sumbit_btn" onClick="CheckPhoneLogin();">登　录</button>
                    </div>
                </div>
            </form>
            <!--手机号获取验证码登录 end-->
            <div class="other-login-ways">
                <ul>
                    <li><a href="javascript:;" onclick="WXLogin()" class="wx_login">微信</a><span class="line">|</span></li>
                    <li><a href="/Passport/QQ/Login" title="QQ快捷登录" target="_blank">QQ</a><span class="line">|</span></li>
                    <li><a href="/Passport/Alipay/Login" title="支付宝快捷登录" target="_blank">支付宝</a></li>
                </ul>
                <div class="login_q">
                    <span class="wx_kuaijie" style="">上次使用微信快捷登录</span>
                    <span class="qq_kuaijie" style="">上次使用QQ快捷登录</span>
                    <span class="zfb_kuaijie" style="">上次使用支付宝快捷登录</span>
                </div>
            </div>
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
        //窗口操作开始
        $('#passwordModal').modal({ backdrop: 'static', keyboard: false, show: false });
        $('#passwordModal').on('shown.bs.modal', function () {
            var $this = $(this);
            var $modal_dialog = $this.find('.modal-dialog');
            $this.css('display', 'block');
            $modal_dialog.css({ 'margin-top': Math.max(0, ($(window).height() - $modal_dialog.height()) / 2) });
        });
        $('#passwordModal').on('hidden.bs.modal', function () {
            $("#attPage").attr("src", "");
        });

        function DoValidPhone(phone) {
            $('#passwordModal').modal('show');
            $("#attPage").attr('src', '/Passport/Login/ValidPhone?phone=' + phone + "&ReturnUrl=" + $("#backUrl").val());
        }

        function RefreshImage(valImageId) {
            var objImage = document.getElementById(valImageId)
            if (objImage == undefined) {
                return;
            }
            var now = new Date();
            objImage.src = '/Passport/Login/BaseImageValidCode?x=' + now.toUTCString();
        }

        //窗口操作结束
        function Check_Email() {
            HideTips();
            var Email = document.getElementById("UserName");
            if (document.getElementById("UserName").value.length < 1) {
                ShowTips("请输入你的Email地址或手机号码");
                return false;
            } else if (!/^[\w-]+(\.[\w-]+)*@[\w-]+(\.(\w)+)*(\.(\w){2,3})$/.test(document.getElementById("UserName").value) && !(/^\s*1\d{10}\s*$/gi).test(document.getElementById("UserName").value)) {
                ShowTips("请输入有效的Email地址或手机号码");
                return false;
            }
            return true;
        }

        function Check_Password() {
            HideTips();
            var Password = document.getElementById("PassWord");
            if (Password.value.length < 6) {
                ShowTips("请输入密码，密码不能小于6位！");
                return false;
            }
            return true;
        }

        function Check_Code() {
            HideTips();
            var ValidCode = document.getElementById("ValidCode");

            if ($("#ValidCode").attr("display") == "block" && ValidCode.value.length < 4) {
                ShowTips("请输入验证码，验证码应等于4位！");
                return false;
            }

            return true;
        }

        //提交再次验证
        function Check_User_Login() {
            HideTips();
            var code = document.getElementById("ValidCode").value;
            var mail = document.getElementById("UserName").value;
            var pwd = document.getElementById("PassWord").value;

            $("#dosubmit").hide();
            $("#submiting").show();
            if (!Check_Email() && !(/^\s*1\d{10}\s*$/gi).test(mail)) {
                ShowTips("请输入有效的Email地址或手机号码");
                $("#submiting").hide();
                $("#dosubmit").show();
                return false;
            }

            if (!Check_Password()) {
                $("#submiting").hide();
                $("#dosubmit").show();
                return false;
            }
            if (!Check_Code()) {
                $("#submiting").hide();
                $("#dosubmit").show();
                return false;
            }
            if ((/^\s*1\d{10}\s*$/gi).test(mail)) {
                document.getElementById("PassWord").value = encode64(pwd);
                //mail为手机号
                var rmd = Math.random();
                $.ajax({
                    type: "GET",
                    url: "/Passport/Login/IsValidPhone",
                    data: "mail=" + mail + "&pwd=" + pwd + "&rmd=" + rmd,
                    async: false,
                    success: function (data) {
                        if (data == "1") {
                            DoValidPhone(mail);
                            $("#submiting").hide();
                            $("#dosubmit").show();
                            return false;
                        }
                        else if (data == "-1") {
                            ShowTips("你输入的登录名或者密码错误");
                            $("#submiting").hide();
                            $("#dosubmit").show();
                            return false;
                        }
                        else {
                            $("#myForm").submit();
                        }
                    }
                });
            }
            else {
                document.getElementById("PassWord").value = encode64(pwd);
                // 输入的是邮箱就直接提交表单
                $("#myForm").submit();
            }

        }

        function ShowTips(nr) {
            $("#Enr").html("<div class=\"notice-cont\"><span class=\"ico ico-notice\"></span>" + nr + "</div>");
        }

        function HideTips() {
            $("#Enr").html("");
        }

        function ShowAutoLogin() {
            if ($("#autologin").is(":checked")) {
                ShowTips("公共场所不建议自动登录,以防账号丢失");
            }
            else {
                HideTips();
            }
        }

        function SetPlaceHolder() {
            var oForm1 = document.getElementById("myForm");
            if ($("#myForm").is(":hidden"))
            {
                oForm1 = document.getElementById("myForm2");
            }
            var oForm1Inputs = oForm1.getElementsByTagName('input');
            for (var i = 0; i < oForm1Inputs.length; i++) {
                placeHolder(oForm1Inputs[i], true);
            }
        }

        function placeHolder(obj, span) {
            if (!obj.getAttribute('placeholder')) return;
            var imitateMode = span === true ? true : false;
            var supportPlaceholder = 'placeholder' in document.createElement('input');
            if (!supportPlaceholder) {
                var defaultValue = obj.getAttribute('placeholder');
                if (!imitateMode) {
                    obj.onfocus = function () {
                        (obj.value == defaultValue) && (obj.value = '');
                        obj.style.color = '';
                    }
                    obj.onblur = function () {
                        if (obj.value == defaultValue) {
                            obj.style.color = '';
                        } else if (obj.value == '') {
                            obj.value = defaultValue;
                            obj.style.color = '#A6A6A6';
                        }
                    }
                    obj.onblur();
                } else {
                    var placeHolderCont = document.createTextNode(defaultValue);
                    var oWrapper = document.createElement('span');
                    oWrapper.style.cssText = 'position:absolute; color:#A6A6A6; display:inline-block; overflow:hidden;';
                    oWrapper.className = 'wrap-placeholder';
                    oWrapper.style.fontFamily = getStyle(obj, 'fontFamily');
                    oWrapper.style.fontSize = getStyle(obj, 'fontSize');
                    oWrapper.style.marginLeft = parseInt(getStyle(obj, 'marginLeft')) ? parseInt(getStyle(obj, 'marginLeft')) + 3 + 'px' : 3 + 'px';
                    oWrapper.style.marginTop = parseInt(getStyle(obj, 'marginTop')) ? getStyle(obj, 'marginTop') : 1 + 'px';
                    oWrapper.style.paddingLeft = getStyle(obj, 'paddingLeft');
                    oWrapper.style.width = obj.offsetWidth - parseInt(getStyle(obj, 'marginLeft')) + 'px';
                    oWrapper.style.height = obj.offsetHeight + 'px';
                    oWrapper.style.lineHeight = obj.nodeName.toLowerCase() == 'textarea' ? '' : obj.offsetHeight + 'px';
                    oWrapper.appendChild(placeHolderCont);
                    obj.parentNode.insertBefore(oWrapper, obj);
                    oWrapper.onclick = function () {
                        obj.focus();
                    }

                    changeHandler();

                    if (typeof (obj.oninput) == 'object') {
                        obj.addEventListener("input", changeHandler, false);
                    } else {
                        obj.onpropertychange = changeHandler;
                    }
                    function changeHandler() {
                        oWrapper.style.display = obj.value != '' ? 'none' : 'inline-block';
                    }

                    function getStyle(obj, styleName) {
                        var oStyle = null;
                        if (obj.currentStyle)
                            oStyle = obj.currentStyle[styleName];
                        else if (window.getComputedStyle)
                            oStyle = window.getComputedStyle(obj, null)[styleName];
                        return oStyle;
                    }
                }
            }
        }

        $("#UserName").change(function () {
            placeHolder(this, true);
        });

        //回车键
        document.onkeydown = function (event) {
            var e = event || window.event || arguments.callee.caller.arguments[0];
            if (e && e.keyCode == 13) {
                var isFocus = $("#UserName").is(":focus");
                if (isFocus) {
                    $("#PassWord").focus();
                    return false;
                }
                else {
                    Check_User_Login();
                }
            }
        };
        //********************手机验证码登录逻辑begin********************
        var interval = null
        var counter = 0;
        $(function () {
            SetPlaceHolder();
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

            $("#getcode").click(function () {
                $("#phoneErr").hide();
                if ($("#phone").val().length < 11) {
                    $("#phoneErr").html("<div class=\"notice-cont\"><span class=\"ico ico-notice\"></span>请输入手机号</div>").show();
                    return;
                }
                if (!($("#phoneLoginValidCode").is(":hidden")) && ($("#phoneLoginValidCode").val().length < 2)) {
                    $("#phoneErr").html('请输入图片验证码').show();
                    return;
                }
                var phone = $("#phone").val();
                var imgCode = $("#phoneLoginValidCode").val();
                $.ajax({
                    type: "post",
                    url: "/Passport/Login/SendPhoneLoginSMSCode",
                    data: { phone: phone, imgCode: imgCode },
                    async: false,
                    success: function (data) {
                        if (data.Code == "1") {
                            $("#phoneErr").html("<div class=\"notice-cont\"><span class=\"ico ico-notice\"></span>验证码已发送请查收</div>").show();;
                            counter = 0;
                            $("#getcode").hide();
                            $("#regetcode").html("90");
                            $("#prompt_info").show();
                            $("#sumbit_btn").removeAttr("disabled");
                            $("#phoneCode").removeAttr("disabled");
                            interval = window.setInterval(intervalFunc, 1000);
                        }
                        else if (data.Code == "-3") {
                            $("#picCode").show();
                            $("#phoneErr").html("<div class=\"notice-cont\"><span class=\"ico ico-notice\"></span>图片验证码输入错误，请重新输入</div>").show();
                            RefreshImage('imgCaptcha');
                            $("#phoneLoginValidCode").focus();
                        }
                        else if (data.Code == "-4") {
                            $("#phoneErr").html("<div class=\"notice-cont\"><span class=\"ico ico-notice\"></span>发送太频繁，请稍后重试</div>").show();
                        }
                        else if (data.Code == "-6") {
                            $("#phoneErr").html("<div class=\"notice-cont\"><span class=\"ico ico-notice\"></span>手机号码格式不正确，请稍后重试</div>").show();
                        }
                        else if (data.Code == "-12") {
                            $("#phoneErr").html("<div class=\"notice-cont\"><span class=\"ico ico-notice\"></span>请输入图片验证码</div>").show();
                            $("#picCode").show();
                            RefreshImage('imgCaptcha');
                            $("#phoneLoginValidCode").focus();
                        }
                        else if (data.Code == "-5") {
                            $("#phoneErr").html("<div class=\"notice-cont\"><span class=\"ico ico-notice\"></span>你输入的手机号还没有注册，请注册 <a href='/Passport/Register/'></a></div>").show();
                        }
                        else {
                            $("#phoneErr").html("<div class=\"notice-cont\"><span class=\"ico ico-notice\"></span>获取失败，请联系客服处理</div>").show();
                        }
                    }
                });
            });
        });

        function intervalFunc() {
            if (counter > 90) {
                counter = 0;
                $("#getcode").show();
                $("#prompt_info").hide();
                window.clearInterval(interval);
            } else {
                $("#regetcode").html((90 - counter).toString());
            }
            counter = counter + 1;
        }
        function CheckPhoneLogin() {
            $("#phoneErr").hide();
            if ((/^\d{6}$/gi).test($("#phoneCode").val()) == false) {
                $("#phoneErr").html("<div class=\"notice-cont\"><span class=\"ico ico-notice\"></span>请输入正确的短信验证码</div>").show();
                return false;
            }
            var phone = $("#phone").val();
            var code = $("#phoneCode").val();
            $.ajax({
                type: "post",
                url: "/Passport/Login/PhoneValidCodeLogin/",
                data: {
                    phone: phone,
                    code: code
                },
                datatype: 'json',
                async: false,
                success: function (data) {
                    if (data.OK) {
                        var backUrl = $("#backUrl").val();
                        if (backUrl.length > 2) {
                            location.href = backUrl;
                        }
                        else {
                            location.href = "/Member/MemberCenter/";
                        }
                    }
                    else {
                        $("#phoneErr").html("<div class=\"notice-cont\"><span class=\"ico ico-notice\"></span>" + data.Msg + "</div>").show();
                    }

                }
            });
        }
        //********************手机验证码登录逻辑 end********************
        function WXLogin()
        {
            var qrCodeUrl = "https://m.hua.com/wxapi/tempqrpic?pid=3eadd9119ae1423ba90c0b50c0176859&userid=&type=8&sj=2018-4-26&sign=a1aa8a0a3936a6b3";
            layer.open({
                type: 1,
                title: false,
                closeBtn: 0,
                shadeClose: true,
                skin: 'yourclass',
                content: '<style>.impowerBox .title{text-align: center;font-size: 20px;margin-top:15px;}.impowerBox .qrcode{width: 280px;margin-top: 15px;}.impowerBox{text-align: center;}</style><div class="main impowerBox"><div class="loginPanel normalPanel"><div class="title">微信登录</div><div class="waiting panelContent"><div class="wrp_code"><img class="qrcode lightBorder" id="wxLoginQR" src="" /></div><div class="info"><div class="status status_browser js_status" id="wx_default_tip"><p>请使用微信扫描二维码登录“花礼网”</p></div><div class="status status_succ js_status" style="display:none" id="wx_after_scan"><i class="status_icon icon38_msg succ"></i><div class="status_txt"><h4>扫描成功</h4><p>请在微信中点击关注即可登录</p></div></div><div class="status status_fail js_status" style="display:none" id="wx_after_cancel"><i class="status_icon icon38_msg warn"></i><div class="status_txt"><h4>您已取消此次登录</h4><p>您可再次扫描登录，或关闭窗口</p></div></div></div></div></div></div>'
  , area: ['350px', '410px']
  , shadeClose: false
  , closeBtn: 2
  , cancel: function () { window.clearInterval(interval1); }
            });
            $("#wxLoginQR").attr("src", qrCodeUrl);
            var counter1 = 600;;
            var interval1 = window.setInterval(intervalFunc1, 5000);
            function intervalFunc1() {
                if (counter1 > 0) {
                    counter1 -= 1;
                    AjaxWxLogin();
                }
                else { window.clearInterval(interval1);}
            }
        }

        function AjaxWxLogin()
        {
            var pid = "3eadd9119ae1423ba90c0b50c0176859";
            var sj = "2018-4-26";
            var sign = "a1aa8a0a3936a6b3";
            $.ajax({
                type: "POST", url: "/Passport/Login/WXLogin", data: { pid: pid,sj:sj,sign:sign }, timeout: 5000, dataType: 'json',
                error: function(XMLHttpRequest, textStatus, errorThrown){console.log(errorThrown);}, 
                success: function(data) {
                    var retStatus=data.Status;
                    if (retStatus == 0) {
                        var backUrl = $("#backUrl").val();
                        if (backUrl.length > 2) {
                            location.href = backUrl;
                        }
                        else {
                            location.href = "/Member/MemberCenter/";
                        }
                    }
                }
            });
        }
        function encode64(pwd) {
            // base64加密开始  
            var keyStr = "ABCDEFGHIJKLMNOP" + "QRSTUVWXYZabcdef" + "ghijklmnopqrstuv"
                    + "wxyz0123456789+/" + "=";
            var output = "";
            var chr1, chr2, chr3 = "";
            var enc1, enc2, enc3, enc4 = "";
            var i = 0;
            do {
                chr1 = pwd.charCodeAt(i++);
                chr2 = pwd.charCodeAt(i++);
                chr3 = pwd.charCodeAt(i++);
                enc1 = chr1 >> 2;
                enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
                enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
                enc4 = chr3 & 63;
                if (isNaN(chr2)) {
                    enc3 = enc4 = 64;
                } else if (isNaN(chr3)) {
                    enc4 = 64;
                }
                output = output + keyStr.charAt(enc1) + keyStr.charAt(enc2)
                        + keyStr.charAt(enc3) + keyStr.charAt(enc4);
                chr1 = chr2 = chr3 = "";
                enc1 = enc2 = enc3 = enc4 = "";
            } while (i < pwd.length);

            return output;
        }
    </script>


        <script type="text/javascript" src="../assets/Scripts/statesandright.js"></script>
    <script src="../assets/Scripts/layer.js"></script>
    <script type="text/javascript">
        var userId = 0;
        function reqUrlParam(paras) {
            var url = location.href;
            var paraString = url.substring(url.indexOf("?") + 1, url.length).split("&");
            var paraObj = {}
            for (i = 0; j = paraString[i]; i++) {
                paraObj[j.substring(0, j.indexOf("=")).toLowerCase()] = j.substring(j.indexOf("=") + 1, j.length);
            }
            var returnValue = paraObj[paras.toLowerCase()];
            if (typeof (returnValue) == "undefined") {
                return "";
            } else {
                return returnValue;
            }
        }
        function setCurUrlClass() {
            // css : class = "color_tj"
            var pathname1 = window.location.pathname;
            $("a[href='" + pathname1 + "'").addClass("color_tj");
        }
        if ($("#pjCount").length > 0) {
            $.get("/productpj/GetPJCount", function (data) {
                $("#pjCount").text(data);
            });
        }
        $(function () {
            $.get("/Home/GetLoginUserId", null, function (data) {
                userId = data;
            }, "json");
        });

        $("#kefu").click(function () {
            $.post("/Home/ZhiChiCustomerLog", null, function (data) {
                window.open('https://www.sobot.com/chat/pc/index.html?sysNum=d22b0bfa87fd42258397365c95bc5e08&partnerId=' + data + '', '在线客服', 'height=800,width=650,toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no');
            });
            
        });
        $("#kefu1").click(function () {
            $.post("/Home/ZhiChiCustomerLog", null, function (data) {
                window.open('https://www.sobot.com/chat/pc/index.html?sysNum=d22b0bfa87fd42258397365c95bc5e08&partnerId=' + data + '', '在线客服', 'height=800,width=650,toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no');
            });
            
        });
    </script>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="../assets/Scripts/dcc02026fb994a3b8f91704cff5a6a0e.js"></script>
    <script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-1701714-3');
    </script>
    <!-- Google Tag Manager (noscript) -->
    <noscript>
        <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KS4PTHC"
                height="0" width="0" style="display:none;visibility:hidden"></iframe>
    </noscript>
    <!-- End Google Tag Manager (noscript) -->
</body>
</html>