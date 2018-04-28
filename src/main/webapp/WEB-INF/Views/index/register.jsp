<%@ page language="java" pageEncoding="utf-8" contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>会员注册 - 花礼网</title>
    <meta name="description" content="鲜花网,选中国鲜花礼品网(花礼网)-中国鲜花网领先品牌,Hua.com专注鲜花速递服务10年,销量稳居鲜花礼品类网站首位！鲜花网提供24小时订鲜花，同城送花、异地送花服务,网上订花后最快3小时即可将鲜花快递上门,送花网站覆盖中国900多城市！" />
    <meta name="keywords" content="中国鲜花礼品网,鲜花,鲜花网,鲜花快递,网上订花送花,中国鲜花网,鲜花礼品,网上订花,送花网站" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit|ie-comp">
    
    <script type="text/javascript" src="../assets/Scripts/749f72a08ee9437d8ccfd302db0539d3.js"></script>
    <link rel="icon" href="/favicon.ico" mce_href="/favicon.ico" type="image/x-icon">
    
    <link type="text/css" rel="stylesheet" href="../assets/Css/common.css">
    <link type="text/css" rel="stylesheet" href="../assets/Css/public.css">
    
    <style type="text/css">
        .email_autocomplete1 {
            position: relative;
            display: inline-block;
        }

            .email_autocomplete1 input {
                width: 304px;
                height: 40px;
                padding: 10px;
                border: 1px solid #d2d2d2;
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
                .logMethod {
                    float: right;
                    margin-right: 38px;
                    color: #ff6a00;
                    font-size: 12px;
                    margin-bottom: 10px;
                }

                a.logMethod {
                    text-decoration: none;
                }

                a.logMethod:hover {
                    text-decoration: underline;
                }
                .SMScodes {
                    position: relative;
                    display: inline-block;
                    float: left;
                }
                .SMScodes input {
                    width: 182px;
                    height: 40px;
                    padding: 10px;
                    border: 1px solid #d2d2d2;
                }
                .btnSend{
                    height: 40px;
                    margin-left: 7px;
                    width: 115px;
                    border: 0;
                    background: #FFAD0D;
                    border-radius: 5px;
                    color: #fff;
                    margin-left: 3px\9;
                    vertical-align: middle;
                }
                .btnSend:hover {
                    background: #faa500;
                }
                .login-box .login-panel .login-notice{margin-top: 0;}
                .csqh{
                    margin-top: -9px;
                    font-size: 26px;
                    color: #444;
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
        欢迎${identity}注册
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
    <input type="hidden" id="errorMsg" />
    <div class="container">
        <div class="login-box">
            <ul class="login-tabs">
                <li><a href="/Passport/Login/">登录</a></li>
                <li class="active"><a href="javascript:void(0)">注册</a></li>
            </ul>
            <!-- 登录/注册tab End -->
            <a href="javascript:void(0);" class="logMethod">使用手机号码注册</a><div style="clear:both;"></div>
            <form action="/Passport/Register/" method="post" name="regForm" id="regForm">
                <div class="tab-content">
                    <!-- 注册 -->
                    <div id="registerPane" class="tab-pane login-panel fade in active">
                        <div class="login-notice" id="Enr" style="display:none;"></div>
                        <div class="form-group">
                            <div class="email_autocomplete1"><input name="Email" autocomplete="off" placeholder="请填写您的Email地址" nodetype="email" value="" type="text" id="Email" config="{width:304,height:40}" /></div>
                        </div>
                        <div class="form-group">
                            <input name="PassWord" id="PassWord" type="password" class="form-control" placeholder="密码">
                        </div>
                        <div class="form-group">
                            <input id="RexPassWord" name="RexPassWord" type="password" class="form-control" placeholder="再次输入密码">
                        </div>
                        <div class="form-group verify">
                            <input type="hidden" name="action" value="reg">
                            <input id="Validate_Code" name="Validate_Code" maxlength="4" type="text" class="form-control" placeholder="验证码">
                            <a href="javascript:RefreshImage('imgCaptcha');"><img src="../assets/Picture/ba0ed95d7af9461fb457458be509d302.gif" id="imgCaptcha" height="25" width="100"></a>
                            <a class="refresh" href="javascript:RefreshImage('imgCaptcha');">看不清,换一张</a>
                        </div>
                        <button class="btn btn-primary btn-lg btn-block" type="button" onClick="return Check_User_Login();">立即注册</button>
                    </div>
                    <!-- 注册 End -->
                </div>
            </form>
            <form action="/Passport/Register/PhoneRegister" method="post" name="regForm2" id="regForm2" style="display:none;">
                <div class="tab-content">
                    <div id="phoneRegisterPane" class="tab-pane login-panel fade in active">
                        <div class="login-notice" id="phoneErr" style="display:none;"></div>
                        <div class="form-group">
                            <div class="email_autocomplete1">
                            <input name="phone" autocomplete="off" placeholder="请填写您手机号码" nodetype="phone" value="" type="phone" id="phone" config="{width:304,height:40}" /></div>
                        </div>
                        <div class="form-group">
                            <input name="phonePassWord" id="phonePassWord" type="password" class="form-control" placeholder="请输入密码" value="">
                        </div>
                        <div class="form-group verify">
                            <input type="hidden" name="action" value="reg">
                            <input id="phoneLoginValidCode" name="phoneLoginValidCode" maxlength="4" type="text" class="form-control" placeholder="验证码" value="">
                            <a href="javascript:RefreshImage('imgPhoneCaptcha');"><img src="../assets/Picture/ba0ed95d7af9461fb457458be509d302.gif" id="imgPhoneCaptcha" height="25" width="100"></a>
                            <a class="refresh" href="javascript:RefreshImage('imgPhoneCaptcha');">看不清,换一张</a>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="">短信验证码</label>
                            <div class="input-group">
                                <div class="SMScodes"><input name="phoneCode" id="phoneCode" maxlength="6" autocomplete="off" placeholder="短信验证码" type="text" disabled="disabled"></div>
                                <button type="button" class="btnSend" id="getcode">获取验证码</button>
                                <button type="button" class="btnSend" id="prompt_info" style="display:none;"><span id="regetcode"></span>秒后重新发送</button>
                            </div>
                        </div>
                        <button class="btn btn-primary btn-lg btn-block" type="button" id="btnPhoneRegister" name="btnPhoneRegister">立即注册</button>
                    </div>
                </div>
            </form>
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
    <script>
        $(function () {
            var errorInfo = $.trim($("#errorMsg").val());
            if (errorInfo != "") {
                if (errorInfo.indexOf("请登录") > -1) {
                    alert(errorInfo);
                    location.href = "/Passport/Login/?loginMail=";
                }
                else {
                    alert(errorInfo);
                }
            }
        });
        function RefreshImage(valImageId) {
            var objImage = document.getElementById(valImageId)
            if (objImage == undefined) {
                return;
            }
            var now = new Date();
            objImage.src = '/Passport/Register/BaseImageValidCode?x=' + now.toUTCString();
        }

        $(window.parent.document).find("#attPage").load(function () {
            var main = $(window.parent.document).find("#attPage");
            var thisheight = $(document).height();
            main.height(thisheight < 410 ? 410 : thisheight);
        });

        function Check_Reg() {
            var checkOK = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_-";
            var checkStr = myform.UserName.value;
            var allValid = true;
            var validGroups = true;
            for (i = 0; i < checkStr.length; i++) {
                ch = checkStr.charAt(i);
                for (j = 0; j < checkOK.length; j++)
                    if (ch == checkOK.charAt(j))
                        break;
                if (j == checkOK.length) {
                    allValid = false;
                    break;
                }
            }
            return allValid;
        }

        //检查EMAIL
        function Check_Email() {
            HideTips();
            if (document.getElementById("Email").value.length < 1) {
                ShowTips("请输入你的Email地址!");
                return false;
            } else if ((/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/gi).test($("#Email").val()) == false) {
                ShowTips("请输入有效的Email地址!");
                return false;
            }
            else {
                var ret = $.ajax(
                    {
                        url: "/Passport/Register/IsExistEmail?username=" + document.getElementById("Email").value,
                        async: false
                    }).responseText;
                if (ret == 0) {
                    ShowTips("对不起，该用户名已经被人占用!");
                    return false;
                }
            }
            return true;
        }

        //检查密码
        function ChangePassword() {
            HideTips();
            var pwd = document.getElementById("PassWord").value;
            if (pwd == null || pwd.length < 6) {
                ShowTips("此项为必填项，密码不能小于6位");
                return false;
            }
            return true;
        }
        //检查重新输出密码
        function Check_RePassWord() {
            HideTips();
            var PassWord = document.getElementById("PassWord");
            var RexPassWord = document.getElementById("RexPassWord");
            if ((RexPassWord.value == "") || (PassWord.value != RexPassWord.value)) {
                ShowTips("两次输入密码不一致，请重新输入！");
                return false;
            } else {
            }
            return true;
        }

        //检查验证码
        function CheckValidateCode() {
            HideTips();
            var Validate_Code = document.getElementById("Validate_Code");
            if ((Validate_Code.value == "") || (Validate_Code.value.length < 4)) {
                ShowTips("请输入正确的验证码");
                return false;
            }
            //else{
            //	    return xmlcheckeVCode00(Validate_Code.value);
            //	}
            return true;
        }

        //提交再次验证
        function Check_User_Login() {
            //	alert("Check_Email():"+Check_Email());
            if (!Check_Email()) return false;
            //	alert("ChangePassword():"+ChangePassword());
            if (!ChangePassword()) return false;
            //	alert("Check_RePassWord():"+Check_RePassWord());
            if (!Check_RePassWord()) return false;
            //	alert("CheckValidateCode():"+CheckValidateCode());
            if (!CheckValidateCode()) return false;
            $("#regForm").submit();
        }

        function ChangeImg1() {
            $("#Img1").attr("src", "/Passport/Register/BaseImageValidCode?" + Math.random());
        }
        function ShowTips(nr) {
            $("#Enr").html("<div class=\"notice-cont\"><span class=\"ico ico-notice\"></span>" + nr + "</div>");
            $("#Enr").show();
        }
        function HideTips() {
            $("#Enr").hide();
        }
    </script>
    <script type="text/javascript">

        function SetPlaceHolder(formid) {
            var oForm1 = document.getElementById(formid);
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
        //回车键
        document.onkeydown = function (event) {
            var e = event || window.event || arguments.callee.caller.arguments[0];
            if (e && e.keyCode == 13) {
                var isFocus = $("#Email").is(":focus");
                if (isFocus) {
                    $("#PassWord").focus();
                    return false;
                }
                else {
                    Check_User_Login();
                }
            }
        };
        //********************手机号码注册********************
        var interval = null;
        var counter = 0;
        $(function () {
            SetPlaceHolder("regForm");
            $("#regForm2").hide();
            $(".logMethod").click(function () {
                if ($(this).text() == "使用邮箱注册") {
                    $(this).text("使用手机号码注册");
                    $("#regForm").show();
                    $("#regForm2").hide();
                } else {
                    $(this).text("使用邮箱注册");
                    $("#regForm").hide();
                    $("#regForm2").show();
                    SetPlaceHolder("regForm2");
                }
            });
            $("#getcode").click(function () {
                HidePhoneTips();
                if (!check_Phone()) return false;
                if (!check_PassWord()) return false;
                if (!check_ValidateCode()) return false;
                var phone = $("#phone").val();
                var imgCode = $("#phoneLoginValidCode").val();
                var data = { phone: phone, imgCode: imgCode };
                $.ajax({
                    type: "Post",
                    url: "/Passport/Register/SendSmsVerificationCode",
                    data: data,
                    dataType: "json",
                    async: false,
                    success: function (data) {
                        if (data.OK) {
                            ShowPhoneTips("验证码已发送,请查收!");
                            $("#phone").attr("disabled", "disabled");
                            $("#phonePassWord").attr("disabled", "disabled");
                            $("#phoneLoginValidCode").attr("disabled", "disabled");
                            $("#getcode").hide();
                            $("#regetcode").html("90");
                            $("#prompt_info").show();
                            $("#phoneCode").removeAttr("disabled");
                            interval = window.setInterval(intervalFunc, 1000);

                        } else if (data.Msg == "-1") {
                            ShowPhoneTips("您输入的验证码不正确!");
                            return false;
                        }
                        else {
                            ShowPhoneTips("获取验证码失败!");
                            return false;
                        }
                    }
                });
            });
        });
        $("#btnPhoneRegister").click(function () {
            $("#btnPhoneRegister").attr("disabled", "disabled");
            HidePhoneTips();
            if (!check_PassWord()) return false;
            var phoneCode = $("#phoneCode").val().trim();
            if (phoneCode == "" || phoneCode.length < 6) {
                ShowPhoneTips("请输入您的短信验证码!");
                return false;
            }
            else {
                var phone = $("#phone").val();
                var password = $("#phonePassWord").val();
                $.ajax({
                    url: '/Passport/Register/SendPhoneValidCode',
                    type: 'post',
                    data: {
                        phone: phone,
                        password: password,
                        phoneCode: phoneCode
                    },
                    datatype: 'json',
                    async: false,//使用同步的方式,true為非同步方式
                    success: function (data) {
                        if (!data.OK) {
                            ShowPhoneTips(data.Msg);
                            return false;
                        }
                        else if (data.OK) {
                            location.href = "/";
                        }
                    }
                });
            }
            $("#btnPhoneRegister").removeAttr("disabled");
        });
            //手机号注册检测手机号
            function check_Phone()
            {
                HidePhoneTips();
                var phone = $("#phone").val().trim();
                if (phone.length <= 0) {
                    ShowPhoneTips("手机号不能为空，请您重新输入！");
                    return false;
                } else if (!(/^\s*1\d{10}\s*$/gi).test(phone)) {
                    ShowPhoneTips("很抱歉!请输入有效的手机号！");
                    return false;
                }
                else {
                    var imgCode = $("#phoneLoginValidCode").val();
                    if (imgCode.length <= 0)
                    {
                        ShowPhoneTips("很抱歉!请输入图形验证码！");
                    }
                    var ret = $.ajax(
                        {
                            url: "/Passport/Register/IsExistPhone?phone=" + phone + "&imgCode="+imgCode,
                            async: false
                        }).responseText;
                    if (ret == 0) {
                        ShowPhoneTips("该手机号已是会员，请使用<a href='/Passport/Login/?lw=yzm&phone=" + phone + "' style='text-decoration:underline'>手机验证码登陆>></a>");
                        return false;
                    }
                    else if (ret == -1)
                    {
                        ShowPhoneTips("图形验证码不正确!");
                        return false;
                    }
                }
                return true;
            }

            //手机号注册检测密码
            function check_PassWord() {
                HidePhoneTips();
                var pwd = $("#phonePassWord").val().trim();
                if (pwd == "" || pwd.length < 6) {
                    ShowPhoneTips("请输入您的登录密码且密码不能小于6位!");
                    return false;
                }
                return true;
            }

            //手机号注册检测验证码
            function check_ValidateCode() {
                HidePhoneTips();
                var code = $("#phoneLoginValidCode").val().trim();
                if ((code == "") || (code.length < 4)) {
                    ShowPhoneTips("您输入的验证码不正确!");
                    return false;
                }
                return true;
            }


            function ShowPhoneTips(nr) {
                $("#phoneErr").html("<div class=\"notice-cont\"><span class=\"ico ico-notice\"></span>" + nr + "</div>");
                $("#phoneErr").show();
            }
            function HidePhoneTips() {
                $("#phoneErr").hide();
            }

            function intervalFunc() {
                if (counter > 90) {
                    counter = 0;
                    $("#regetcode").html("");
                    $("#getcode").show();
                    $("#prompt_info").hide();
                    window.clearInterval(interval);
                } else {
                    $("#regetcode").html((90 - counter).toString());
                }
                counter = counter + 1;
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