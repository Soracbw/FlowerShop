<%@ page language="java" pageEncoding="utf-8" contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>微信安全支付-花礼网</title>
    <meta name="description" />
    <meta name="keywords" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit|ie-comp">
    <link rel="icon" href="/favicon.ico" mce_href="/favicon.ico" type="image/x-icon">
    <link type="text/css" rel="stylesheet" href="../../assets/Css/common.css">
    <link type="text/css" rel="stylesheet" href="../../assets/Css/public.css">
    
    <style type="text/css">
        <!--
        a.a04:link {
            text-decoration: none;
        }

        a.a04:visited {
            text-decoration: none;
        }

        a.a04:hover {
            text-decoration: none;
        }

        a.a05:link {
            color: #d91616;
            text-decoration: underline;
        }

        a.a05:visited {
            color: #d91616;
            text-decoration: underline;
        }

        a.a05:hover {
            color: #ff9900;
            text-decoration: underline;
        }

        .wxply {
            border: 1px solid #E2E2E2;
            clear: both;
            display: block;
            height: 480px;
            margin: 0 auto 10px;
            padding: 10px 15px;
            text-align: left;
        }

        body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, form, fieldset, input, textarea, p, blockquote {
            margin: 0;
            padding: 0;
        }

        .car5box1 {
            border: 1px solid #E2E2E2;
            margin-bottom: 0px;
            text-align: left;
        }

        .f_16 {
            font-size: 16px;
            font-weight: bold;
            line-height: 34px;
        }

        .p_list {
            padding-left: 250px;
            margin-bottom: 70px;
            padding-top: 20px;
        }

        .p_z {
            width: 249px;
            float: left;
            padding-top: 22px;
        }

        .p_y {
            float: left;
            width: 429px;
        }

        .sys {
            margin-bottom: 12px;
            border: 1px solid #e2e2e2;
        }

        .sys_btn {
            height: 50px;
            background: url(../../assets/Images/wx_btn.jpg) no-repeat;
            font-size: 14px;
            font-weight: bold;
            line-height: 16px;
            color: #fff;
            padding: 11px 0 0 80px;
        }

        .STYLE1 {
            color: #FF0000;
        }

        .car5box1 .c5incontent {
            padding: 10px 15px;
            text-align: left;
            line-height: 24px;
        }
        -->
    </style>

    <!--[if lt IE 9]>
        <script src="../../assets/Scripts/html5shiv.min.js"></script>
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
<body class="cart-flow">
    <!-- 顶部导航 -->
    <div class="site-nav">
        <div class="container">
            <ul class="site-nav-l">
                <li class="menu">
                    <a href="/" onClick="addfavorite();return false;"><span class="ico ico-star"></span>收藏花礼网</a>
                </li>
                <li class="menu dropdown">
                    <a href="javascript:void(0)" data-hover="dropdown" data-delay="0"><span class="ico ico-weixin"></span>关注微信</a>
                    <div class="dropdown-menu dropdown-weixin">
                        <img src="../../assets/Picture/wechat_qrcode.jpg" height="124" width="124">
                        <p>扫一扫 有惊喜</p>
                    </div>
                </li>
                <li class="menu dropdown">
                    <a href="/mobile/" data-hover="dropdown" data-delay="0" target="_blank"><span class="ico ico-mobile"></span>花礼网app</a>
                    <div class="dropdown-menu dropdown-weixin">
                        <img src="../../assets/Picture/app_qrcode.jpg" height="124" width="124">
                        <p>新人专享100元APP礼包</p>
                    </div>
                </li>
            </ul>
            <ul class="site-nav-r">
                <li class="menu login" id="LoginInfo">
                    <a href="/Passport/Login/" rel="nofollow" id="btn-login">你好，请登录</a><a href="/Passport/Register/" rel="nofollow" id="btn-reg">注册</a>
                </li>
                <li class="site-nav-pipe">|</li>
                <li class="menu">
                    <a href="/help/ordercx/">订单查询</a>
                </li>
                <li class="site-nav-pipe">|</li>
                <li class="menu dropdown">
                    <a href="/help/" data-hover="dropdown" data-delay="0">客户服务<span class="glyphicon glyphicon-triangle-bottom"></span></a>
                    <div class="dropdown-menu dropdown-service">
                        <a href="/member/payment/balancefill">在线付款</a>
                        <a href="/help/">帮助中心</a>
                        <a href="/help/afterservice.htm">售后服务</a>
                        <a href="/help/sendRange.htm">配送范围</a>
                        <a href="/chat/">留言反馈</a>
                    </div>
                </li>
                <li class="site-nav-pipe">|</li>
                <li class="menu dropdown">
                    <a href="/shopping/showcart" data-hover="dropdown" data-delay="0"><span class="ico ico-cart"></span>购物车<span class="text-primary" id="gwcCount"></span><span class="glyphicon glyphicon-triangle-bottom"></span></a>
                    <div class="dropdown-menu dropdown-cart" id="CartInfo"></div>
                </li>
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
            <h1><a href="/" class="logo-bd">花礼网</a></h1>
            <i></i>
            <h2>中国鲜花礼品网 开始2005，简称花礼网</h2>
        </div>
        <div class="service">
            <span class="ico ico-phone"></span>400-889-8188
            <a href="/chat/" target="_blank"><span class="ico ico-headset"></span>在线客服</a>
        </div>
    </header>
    <!-- 头部 End -->
    

<!--内容开始-->
<div class="container">
    <div class="breadcrumbs"><a href="/">首页</a> &gt; 微信支付</div>
    <div class="carbodybox">
        <div class="content">
            <div class="car5boxall">
                <div class="car5box1">
                    <div class="c5incontent">
                        &nbsp;&nbsp;&nbsp;&nbsp;您要支付的订单号：<font color="#FF6600"><strong>221128482</strong></font>，金额：<font color="#FF6600"><strong>￥298元</strong></font><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;您选择的支付方式是<font color="#FF6600">
                            <strong>
                                微信支付
                            </strong>
                        </font>，请用微信扫描下面二维码并按提示尽快完成付款，以便我们及时安排您的订单！
                        </font>
                    </div>
                </div>
            </div>
            </table></td>
            </tr>
            </table>
            <br>
        </div>
    </div>
    <!--微信扫描内容-->
    <div class="wxply">
        <div class="f_16"><img src="../../assets/Picture/wxpay_1.jpg" alt="微信支付" /></div>
        <div class="p_list">
            <div class="p_z">
                <div class="sys"><img src="../../assets/Picture/34ec1e9423d5435baa749d70d29dd0ef.gif" alt="扫一扫" style="padding:10px 10px 10px 14px;" /></div>
                <div class="sys_btn">请使用微信"扫一扫"<br />扫描以上二维码支付</div>
            </div>
            <div class="p_y"><img src="../../assets/Picture/phone-bg.jpg" alt="微信二维码扫一扫" /></div>
        </div>
    </div>
</div>

    <!--底部-->
    <!-- 服务 -->
    <div class="cart-server">
        <div class="toper-server">
            <ul>
                <li>
                    <span class="ico ico-server-o1"></span>
                    <h4>鲜花电商龙头</h4>
                    <p>销量领先，权威认证龙头企业</p>
                </li>
                <li>
                    <span class="ico ico-server-o2"></span>
                    <h4>13年品牌 真实口碑</h4>
                    <a href="/productpj/"><p>最近评价<font id="pjCount"></font>条</p></a>
                </li>
                <li>
                    <span class="ico ico-server-o3"></span>
                    <h4>鲜花送前实拍展示</h4>
                    <p>展现送前实拍的鲜花网</p>
                </li>
                <li>
                    <span class="ico ico-server-o4"></span>
                    <h4>3小时送达</h4>
                    <p>全国连锁，3小时送2000城市</p>
                </li>
            </ul>
        </div>
    </div>
    <!-- 服务 End -->
    <!-- 尾部导航 -->
    <div class="footer-nav">
        <a href="/">首页</a> <b>|</b> <a href="/profile/about.htm" target="_blank">关于我们</a> <b>|</b> <a href="/profile/media.html" target="_blank">媒体报道</a> <b>|</b> <a href="/profile/contact.htm" target="_blank">联系方式</a> <b>|</b> <a href="/qiyetuangou/" target="_blank">企业团购</a> <b>|</b> <a href="/liansuo/" target="_blank">花店入驻</a> <b>|</b> <a href="/member/payment/balancefill" target="_blank">在线补款</a> <b>|</b> <a class="last-child" href="/profile/why_choose_us.htm" target="_blank">为什么选择中国鲜花礼品网</a>
    </div>
    <!-- 尾部导航 End -->
    <!-- 通用尾部 -->
    <footer>
        <div class="auth">
            <!-- <span style="margin-right:8px;">
                <script src="../../assets/Scripts/seallogo.js"></script>
            </span> -->
            <a href="https://ss.knet.cn/verifyseal.dll?sn=e15041744030058395oqbo000000&ct=df&a=1&pa=0.8817607406526804" target="_blank"><img style="height:40px;" src="../../assets/Picture/cxwz.png"></a>
            <a href="https://search.szfw.org/cert/l/CX20130306002238002312" target="_blank"><img src="../../assets/Picture/cxwz.gif" height="40" width="112"></a>
            <a href="http://www.anquan.org/authenticate/cert/?site=www.hua.com&at=realname" rel="nofollow" target="_blank"><img src="../../assets/Picture/smyz.gif" height="40" width="106"></a>
            <img src="../../assets/Picture/slogan.png" height="50" width="212">
            <a href="/member/payment/fillbyalipay?order_no=&total_fee=" rel="nofollow" target="_blank"><img src="../../assets/Picture/zfb.gif" height="49" width="96"></a>
            <a href="/profile/news_20111110.htm" target="_blank"><img src="../../assets/Picture/100.jpg" height="49" width="150"></a>
        </div>
        <p><a href="/profile/ChinaFlowerAssociation.htm" rel="nofollow" target="_blank" title="中国花卉协会会员">中国花卉协会会员</a> <a href="/profile/chinaECA.htm" rel="nofollow" target="_blank">中国电子商务协会会员</a> ICP经营许可证：<a href="/profile/ICP.htm" rel="nofollow" target="_blank">粤B2-20050744</a> <b>|</b> <a href="http://www.miibeian.gov.cn" rel="nofollow" target="_blank">粤ICP备09171662号</a> Copyright &copy; 2005-2018</p>
        <p>中国鲜花礼品网 <a href="/">www.hua.com</a> 中国鲜花网领先品牌，鲜花速递专家！</p>
    </footer>
    <!-- 通用尾部 End -->
    <script type="text/javascript" src="../../assets/Scripts/common.js"></script>
    <script type="text/javascript">
        $(function () {
            $.get("/Passport/Login/LoginState", null, function (data) {
                if (data != null && data.Logined == true) {
                    $("#btn-login").text(data.ShowName).attr("href", "/Member/MemberCenter/");
                    $("#btn-reg").text("退出").attr("href", "/Passport/Login/Loginout");
                }

            }, "json");
            $.getJSON("/shopping/GetCartJson", function (json) {    //购物车信息显示
                if ($("#gwcCount").length > 0) {
                    $("#gwcCount").html("(" + json.productsNum + ")");
                }
                if ($("#cart_num").length > 0) {
                    $("#cart_num").html(json.productsNum);
                }

                var cartInfo = '';
                if (json.productsNum == 0) {
                    cartInfo = '<div class="empty">您的购物车中没有商品，<a href="/">先去选购吧</a>！</div>'
                }
                else {
                    cartInfo = '<div class="cargo">'
                    $.each(json.datas, function (index, data) {
                        cartInfo = cartInfo + '<div class="com-list"><div class="img-box"><a href="/product/' + data.productCode + '.html" target="_blank"><img src="../../assets/Picture/28c9dcff57b2479ebc7dc14f76db7246.gif' + data.productCode + '.jpg_80x87.jpg" width="50" height="53"></a></div><div class="title"><a href="/product/' + data.productCode + '.html" target="_blank">' + data.productName + '</a></div><div class="num">' + data.productNum + '</div><div class="price"><span class="price-sign text-primary">&yen; </span><span class="price-num text-primary strong"> ' + data.productPrice + '</span></div></div>';
                    });
                    cartInfo = cartInfo + '<div class="settlement"><div class="total-price"><span><strong class="text-primary">' + json.productsNum + '</strong> 件总计:</span><span class="price-sign text-primary strong">&yen; </span><span class="price-num text-primary strong"> ' + json.productsMoney + '</span></div><a href="/shopping/showcart" class="btn btn-primary btn-sm" target="_blank">去购物车结算</a></div></div>';
                }
                if ($("#CartInfo").length > 0) { $("#CartInfo").html(cartInfo); }
            });
            if ($("#pjCount").length > 0) {
                $.get("/productpj/GetPJCount", function (data) {
                    $("#pjCount").text(data);
                })
            }
        });
    </script>
    
    <script type="text/javascript">
        var interval = null;
        var counter = 0;
        var times = 300; //最大时长，秒为单位

        function intervalFunc() {
            counter = counter + 1
            if (counter < 300) {
                if (counter % 5 == 0) {
                    $.ajax({
                        type: "GET",
                        url: "/pays/weixinpay/paystate",
                        data: "orderId=221128482&orderAmount=298",
                        async: false,
                        success: function (data) {
                            if (data != "-1") {
                                window.clearInterval(interval);
                                location.href = "/pays/weixinpay/successcallback?orderId=221128482&orderAmount=298&s=" + data;
                            }
                        }
                    });
                }
            }
            else {
                window.clearInterval(interval);
            }
        }
        interval = window.setInterval(intervalFunc, 1000);
    </script>

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="../../assets/Scripts/9beb9a3765124a9dba6368c3fab8063f.js"></script>
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