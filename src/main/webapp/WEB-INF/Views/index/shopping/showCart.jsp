<%@ page language="java" pageEncoding="utf-8" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>购物车-花礼网</title>
    <meta name="description" />
    <meta name="keywords" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit|ie-comp">
    <link rel="icon" href="/favicon.ico" mce_href="/favicon.ico" type="image/x-icon">
    <link type="text/css" rel="stylesheet" href="../../assets/Css/common.css">
    <link type="text/css" rel="stylesheet" href="../../assets/Css/public.css">
    
    <link type="text/css" rel="stylesheet" href="../../assets/Css/owl.carousel.css">
    <style>
        /*PC 购物车 临时样式*/
        .cart-panel .order-list li.market-price, .cart-panel .order-list li.order-price {
            padding: 0;
            line-height: 55px;
        }

        .cart-panel .bd {
            padding-left: 0;
        }

        .cart-panel .order-list li.operate {
            padding-left: 52px;
        }

        .input-num .btn.no {
            cursor: not-allowed;
        }

            .input-num .btn.no i {
                opacity: 0.2;
            }

        .cart-panel .order-list li.product span {
            white-space: nowrap;
            text-overflow: ellipsis;
            overflow: hidden;
        }

        .order-title > .selecter {
            width: 28px;
            height: 40px;
        }

        .order-list > .selecter {
            width: 48px;
            height: 56px;
            text-align: center;
            cursor: pointer;
        }

        .icon-select {
            display: inline-block;
            width: 24px;
            height: 24px;
            width: 12px\9;
            height: 12px\9;
            border-radius: 50%\9;
            border:1px solid #ddd\9;
            background-image: url(../../assets/Images/checkboxdafault@2x.png);
            background-repeat: no-repeat;
            -webkit-background-size: contain;
            background-size: contain;
            background-position: center;
            margin-top: 16px;
        }

            .icon-select.active {
                background-image: url(../../assets/Images/checkboxselect@2x.png);
            }
            .cart-tabs-wrap .grid-item .img-box img{
              height: 163px;  
            }
        .grid-item .title.cake{
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }
        .grid-item .info-cont .title{
            -webkit-text-size-adjust:none;
        }
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
    


<div class="container">
    <!-- 订单列表 -->
            <div class="cart-panel">
                <div class="hd">
                    <ul class="order-title">
                        <li class="selecter"></li>
                        <li class="product">商品名称</li>
                        <li class="market-price">市场价</li>
                        <li class="order-price">订购价</li>
                        <li class="num">数量</li>
                        <li class="operate">操作</li>
                    </ul>
                </div>
                <div class="bd">
                        <ul class="order-list" id="9012009">
                            <li class="selecter">
                                <i class="icon-select active"></i>
                                <input type="hidden" name="productCode" value="9012009" />
                                <input type="hidden" name="class1" value="鲜花" />
                                <input type="hidden" name="class2" value="" />
                            </li>
                                    <li class="img-box"><a href="/product/9012009.html" target="_blank"><img src="../../assets/Picture/9012009.jpg_80x87.jpg" height="56" width="50"></a></li>
                                        <li class="product">
                                            <a href="/product/9012009.html" target="_blank">
                                                <span class="product-title">[鲜花]忘情巴黎一33枝红玫瑰</span>
                                                <span class="feature"></span>
                                            </a>
                                        </li>

                            <li class="market-price">
                                <span class="price-sign">&yen;</span>
                                <span class="price-num">383</span>
                            </li>
                            <li class="order-price">
                                <span class="price-sign">&yen;</span>
                                <span class="price-num">298</span>
                                <input type="hidden" name="jrPrice" value="355" />
                            </li>
                            <li class="num">
                                <div class="input-num">
                                    <a href="javascript:void(0);" class="btn btn-default no"><i class="ico ico-minus"></i></a>
                                    <input type="text" class="form-control input-sm" name="cpsl" value="1" maxlength="3">
                                    <a href="javascript:void(0)" class="btn btn-default"><i class="ico ico-add"></i></a>
                                </div>
                            </li>
                            <li class="operate"><a href="javascript:void(0)" class="delBtn">删除</a><br><a href="javascript:void(0)" class="collectBtn">移到我的收藏</a></li>
                        </ul>
                </div>
            </div>
                                <div class="set-bar">
                                    <div class="set-info">
                                        <a class="back" href="/" style="width:90px;"><span class="ico ico-back"></span>继续挑选</a>
                                        <div class="set-stat">
                                            应付金额:
                                            <div class="price">
                                                <span class="price-sign">&yen;</span>
                                                <span class="price-num" id="totalMoney">298</span>
                                            </div>
                                        </div>
                                    </div>
                                    <button class="btn btn-primary btn-lg" type="button" id="jiesuan">去结算</button>
                                </div>

        <!-- 结算 End -->

    <!-- tabs -->
    <div class="cart-tabs-wrap">
        <ul class="cart-tabs">
            <li class="active"><a href="#likePane">购买该商品的还购买了</a></li>
                        <li><a href="#addtionalPane">巧克力/花瓶</a></li>
        </ul>
        <div class="tab-content">
            <!-- tab内容一 -->
            <div class="tab-pane fade in active" id="likePane">
                <div class="owl-carousel1">
                    		<!-- 商品 -->
                    <div class="grid-item">
                        <div class="grid-panel">
                            <div class="img-box">
                                <a href="/product/1061006.html" target="_blank"><img src="../../assets/Picture/1061006.jpg_220x240.jpg"></a>
                            </div>
                            <div class="info-cont">
                                    <div class="title">
                                        <a href="/product/1061006.html" target="_blank">顺丰包邮/999纯金箔玫瑰+陶瓷花瓶一千足金箔玫瑰 最佳送女友送爱人礼物 结婚纪念礼物</a>
                                    </div>
                                <div class="price">
                                    <span class="price-sign">&yen;</span>
                                    <span class="price-num">138</span>
                                </div>
                                <div class="operate">
                                    <a href="/shopping/AddtoCart/?product_code=1061006" class="add-cart">加入购物车</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="grid-item">
                        <div class="grid-panel">
                            <div class="img-box">
                                <a href="/product/1064005.html" target="_blank"><img src="../../assets/Picture/1064005.jpg_220x240.jpg"></a>
                            </div>
                            <div class="info-cont">
                                    <div class="title">
                                        <a href="/product/1064005.html" target="_blank">顺丰包邮/十八音水晶钢琴一水晶音乐盒 韵升精品机芯 精选送女友礼物</a>
                                    </div>
                                <div class="price">
                                    <span class="price-sign">&yen;</span>
                                    <span class="price-num">228</span>
                                </div>
                                <div class="operate">
                                    <a href="/shopping/AddtoCart/?product_code=1064005" class="add-cart">加入购物车</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="grid-item">
                        <div class="grid-panel">
                            <div class="img-box">
                                <a href="/product/1065004.html" target="_blank"><img src="../../assets/Picture/1065004.jpg_220x240.jpg"></a>
                            </div>
                            <div class="info-cont">
                                    <div class="title">
                                        <a href="/product/1065004.html" target="_blank">顺丰包邮/宝石旋转木马/蓝一音乐盒畅销款 送女友表白最佳礼物</a>
                                    </div>
                                <div class="price">
                                    <span class="price-sign">&yen;</span>
                                    <span class="price-num">158</span>
                                </div>
                                <div class="operate">
                                    <a href="/shopping/AddtoCart/?product_code=1065004" class="add-cart">加入购物车</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="grid-item">
                        <div class="grid-panel">
                            <div class="img-box">
                                <a href="/product/1073033.html" target="_blank"><img src="../../assets/Picture/1073033.jpg_220x240.jpg"></a>
                            </div>
                            <div class="info-cont">
                                    <div class="title">
                                        <a href="/product/1073033.html" target="_blank">顺丰包邮/一生一世一厄瓜多尔进口永生红玫1朵，双色永生绣球</a>
                                    </div>
                                <div class="price">
                                    <span class="price-sign">&yen;</span>
                                    <span class="price-num">198</span>
                                </div>
                                <div class="operate">
                                    <a href="/shopping/AddtoCart/?product_code=1073033" class="add-cart">加入购物车</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="grid-item">
                        <div class="grid-panel">
                            <div class="img-box">
                                <a href="/product/1071031.html" target="_blank"><img src="../../assets/Picture/1071031.jpg_220x240.jpg"></a>
                            </div>
                            <div class="info-cont">
                                    <div class="title">
                                        <a href="/product/1071031.html" target="_blank">顺丰包邮/心形3D水晶内雕陪你走到老一激光内雕水晶工艺品，USB七彩旋转发光, 带音乐底座</a>
                                    </div>
                                <div class="price">
                                    <span class="price-sign">&yen;</span>
                                    <span class="price-num">169</span>
                                </div>
                                <div class="operate">
                                    <a href="/shopping/AddtoCart/?product_code=1071031" class="add-cart">加入购物车</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="grid-item">
                        <div class="grid-panel">
                            <div class="img-box">
                                <a href="/product/1073155.html" target="_blank"><img src="../../assets/Picture/1073155.jpg_220x240.jpg"></a>
                            </div>
                            <div class="info-cont">
                                    <div class="title">
                                        <a href="/product/1073155.html" target="_blank">顺丰包邮/Be My Love一 厄瓜多尔进口红色永生玫瑰2枝，进口白色永生玫瑰1枝，棉花2朵，粉色珍珠5颗</a>
                                    </div>
                                <div class="price">
                                    <span class="price-sign">&yen;</span>
                                    <span class="price-num">398</span>
                                </div>
                                <div class="operate">
                                    <a href="/shopping/AddtoCart/?product_code=1073155" class="add-cart">加入购物车</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="grid-item">
                        <div class="grid-panel">
                            <div class="img-box">
                                <a href="/product/1073157.html" target="_blank"><img src="../../assets/Picture/1073157.jpg_220x240.jpg"></a>
                            </div>
                            <div class="info-cont">
                                    <div class="title">
                                        <a href="/product/1073157.html" target="_blank">顺丰包邮/「倾世之爱」奢宠   一厄瓜多尔进口红色永生玫瑰</a>
                                    </div>
                                <div class="price">
                                    <span class="price-sign">&yen;</span>
                                    <span class="price-num">2999</span>
                                </div>
                                <div class="operate">
                                    <a href="/shopping/AddtoCart/?product_code=1073157" class="add-cart">加入购物车</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="grid-item">
                        <div class="grid-panel">
                            <div class="img-box">
                                <a href="/product/1073017.html" target="_blank"><img src="../../assets/Picture/1073017.jpg_220x240.jpg"></a>
                            </div>
                            <div class="info-cont">
                                    <div class="title">
                                        <a href="/product/1073017.html" target="_blank">顺丰包邮/一生的承诺一厄瓜多尔玫瑰进口整枝大号永生玫瑰</a>
                                    </div>
                                <div class="price">
                                    <span class="price-sign">&yen;</span>
                                    <span class="price-num">298</span>
                                </div>
                                <div class="operate">
                                    <a href="/shopping/AddtoCart/?product_code=1073017" class="add-cart">加入购物车</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    		<!-- 商品 End -->

                </div>
            </div>
            <!-- tab内容一 End -->
            <!-- tab内容二 -->
            <div class="tab-pane fade" id="attentionPane">
                <div class="owl-carousel2">

                </div>
            </div>

            <!-- tab内容二 End -->
            <!-- tab内容三 -->

            <div class="tab-pane fade" id="browsePane">
                <div class="owl-carousel3">

                </div>
            </div>

            <!-- tab内容三 End -->
            <!-- tab内容4 -->
            <div class="tab-pane fade" id="addtionalPane">
                <div class="owl-carousel4">
                    <div class="grid-item">
                        <div class="grid-panel">
                            <div class="img-box">
                                <a href="/product/1204039.html" target="_blank"><img src="../../assets/Picture/1204039.jpg"></a>
                            </div>
                            <div class="info-cont">
                                <div class="title">
                                    <a href="/product/1204039.html" target="_blank">Felchlin妃亭8粒装心形巧克力礼盒----德国进口夹心手工巧克力</a>
                                </div>
                                <div class="price">
                                    <span class="price-sign">&yen;</span>
                                    <span class="price-num">268</span>
                                </div>
                                <div class="operate">
                                    <a href="/shopping/AddtoCart/?product_code=1204039" class="add-cart">加入购物车</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="grid-item">
                        <div class="grid-panel">
                            <div class="img-box">
                                <a href="/product/1207048.html" target="_blank"><img src="../../assets/Picture/1207048.jpg"></a>
                            </div>
                            <div class="info-cont">
                                <div class="title">
                                    <a href="/product/1207048.html" target="_blank">巧克巧蔻创意心形礼盒----创意手工巧克力</a>
                                </div>
                                <div class="price">
                                    <span class="price-sign">&yen;</span>
                                    <span class="price-num">298</span>
                                </div>
                                <div class="operate">
                                    <a href="/shopping/AddtoCart/?product_code=1207048" class="add-cart">加入购物车</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="grid-item">
                        <div class="grid-panel">
                            <div class="img-box">
                                <a href="/product/1207010.html" target="_blank"><img src="../../assets/Picture/1207010.jpg"></a>
                            </div>
                            <div class="info-cont">
                                <div class="title">
                                    <a href="/product/1207010.html" target="_blank">巧克巧蔻定制16粒装手工夹心巧克力----手工夹心巧克力</a>
                                </div>
                                <div class="price">
                                    <span class="price-sign">&yen;</span>
                                    <span class="price-num">258</span>
                                </div>
                                <div class="operate">
                                    <a href="/shopping/AddtoCart/?product_code=1207010" class="add-cart">加入购物车</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="grid-item">
                        <div class="grid-panel">
                            <div class="img-box">
                                <a href="/product/3010001.html" target="_blank"><img src="../../assets/Picture/3010001_m.jpg"></a>
                            </div>
                            <div class="info-cont">
                                <div class="title">
                                    <a href="/product/3010001.html" target="_blank">精美玻璃花瓶</a><font color="#666666">(图案供参考)</font>
                                </div>
                                <div class="price">
                                    <span class="price-sign">&yen;</span>
                                    <span class="price-num">38</span>
                                </div>
                                <div class="operate">
                                    <a href="/shopping/AddtoCart/?product_code=3010001" class="add-cart">加入购物车</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="grid-item">
                        <div class="grid-panel">
                            <div class="img-box">
                                <a href="/product/3010003.html" target="_blank"><img src="../../assets/Picture/3010003_m.jpg"></a>
                            </div>
                            <div class="info-cont">
                                <div class="title">
                                    <a href="/product/3010003.html" target="_blank">德芙:98g铁盒或109克礼盒</a>
                                </div>
                                <div class="price">
                                    <span class="price-sign">&yen;</span>
                                    <span class="price-num">68</span>
                                </div>
                                <div class="operate">
                                    <a href="/shopping/AddtoCart/?product_code=3010003" class="add-cart">加入购物车</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="grid-item">
                        <div class="grid-panel">
                            <div class="img-box">
                                <a href="/product/3010008.html" target="_blank"><img src="../../assets/Picture/3010008_m.gif"></a>
                            </div>
                            <div class="info-cont">
                                <div class="title">
                                    <a href="/product/3010008.html" target="_blank">德芙精心之选140g或恋语150g(随机发货)</a>
                                </div>
                                <div class="price">
                                    <span class="price-sign">&yen;</span>
                                    <span class="price-num">105</span>
                                </div>
                                <div class="operate">
                                    <a href="/shopping/AddtoCart/?product_code=3010008" class="add-cart">加入购物车</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="grid-item">
                        <div class="grid-panel">
                            <div class="img-box">
                                <a href="/product/3010004.html" target="_blank"><img src="../../assets/Picture/3010004_m.jpg"></a>
                            </div>
                            <div class="info-cont">
                                <div class="title">
                                    <a href="/product/3010004.html" target="_blank">费列罗巧克力300克</a>
                                </div>
                                <div class="price">
                                    <span class="price-sign">&yen;</span>
                                    <span class="price-num">138</span>
                                </div>
                                <div class="operate">
                                    <a href="/shopping/AddtoCart/?product_code=3010004" class="add-cart">加入购物车</a>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
            <!-- tab内容4 End -->
        </div>
    </div>
    <!-- tabs End -->
</div>
<!-- 弹出窗口-->
<div class="modal fade com-modal" id="loginModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="attNotice">收藏商品</h4>
            </div>
            <div class="modal-body" style="overflow:hidden;">
                <iframe src="" width="100%" height="430" frameborder="0" id="attPage"></iframe>
            </div>
        </div>
    </div>
</div>
<!-- 弹出窗口end-->

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
    
    <script type="text/javascript" src="../../assets/Scripts/owl.carousel.min.js"></script>
    <script type="text/javascript">
        //窗口操作开始
        $('#loginModal').modal({ backdrop: 'static', keyboard: false, show: false });
        $('#loginModal').on('shown.bs.modal', function () {
            var $this = $(this);
            var $modal_dialog = $this.find('.modal-dialog');
            $this.css('display', 'block');
            $modal_dialog.css({ 'margin-top': Math.max(0, ($(window).height() - $modal_dialog.height()) / 2) });
        });
        $('#loginModal').on('hidden.bs.modal', function () {
            $("#attPage").attr("src", "");
        });
        //关注商品
        function DoGuanZhu(pp) {
            $("#attNotice").html("收藏商品");
            $('#loginModal').modal('show');
            $("#attPage").attr('src', '/Shopping/WinGuanZhu?ly=cart&pp=' + pp)
        }

        function DoWinLogin() {
            try {
                $("#attNotice").html("您还没有登陆");
                $('#loginModal').modal('show');
                $("#attPage").attr('src', '/Passport/Login/WinLogin?fr=cart')
            }
            catch (err) {
                return;
                location.href = '/Shopping/SendInfo';
            }
        }
        //窗口操作结束

        $(function () {
            $('.cart-tabs a').click(function (e) {
                e.preventDefault()
                $(this).tab('show')
            })
            // tabs内容滑动
            $(".owl-carousel1,.owl-carousel2,.owl-carousel3,.owl-carousel4").owlCarousel({
                responsive: false,
                mouseDrag: false,
                touchDrag: false,
                navigation: true,
                navigationText: false
            });
            $(".order-list>.selecter").click(function () {
                var $seleter = $(this).find("i");
                $seleter.toggleClass("active");
                count();
                OperCart("update", "");
            });

            $(".delBtn").click(function () {
                if (confirm("确认删除该商品吗？"))
                {
                    var delId = $(this).parents(".order-list").attr("id");
                    OperCart("del", delId);
                }
            });

            $(".collectBtn").click(function () {
                var cid = $(this).parents(".order-list").attr("id");
                OperCart("collect", cid);
            });

            $("#jiesuan").click(function () {
                OperCart("submit", "");
            });

            function count() {
                var dogsCodes = '1011001,1011002,1011003,1011004';
                var class1s = "";//大类
                var gwcCount = 0;
                var num = 0;
                var total = 0;
                var jrTotal = 0;
                var dogsCount = 0;//数量
                var kaiyeCount = 0;//开业花篮数量
                var $item = $("i[class='icon-select active']").parents(".order-list");
                $item.each(function () {
                    var productCode = $(this).find("input[name='productCode']").val();
                    var class1 = $(this).find("input[name='class1']").val();
                    var class2 = $(this).find("input[name='class2']").val();
                    var $num = $(this).find("input[name='cpsl']");
                    total += parseInt($(this).find(".order-price>.price-num").text()) * parseInt($num.val());
                    jrTotal += parseInt($(this).find("input[name='jrPrice']").val()) * parseInt($num.val());
                    num += parseInt($num.val());
                    class1s = class1s + class1 + ",";
                    if (dogsCodes.indexOf(productCode) > -1) {
                        dogsCount = dogsCount + parseInt($num.val());
                    }
                    if (class2 == "开业花篮") {
                        kaiyeCount = kaiyeCount + parseInt($num.val());
                    }
                });
                $(".order-list input[name='cpsl']").each(function () {
                    gwcCount = gwcCount + parseInt($(this).val());
                })
                if (dogsCount > 1) {
                    total = total - 10;
                    jrTotal = jrTotal - 10;
                }
                $("#totalMoney").text(total);
                $(".jrPriceTxt").text(jrTotal);
                if (kaiyeCount == 1) {
                    $("#ShowBusinessFlowerNotice").show();
                }
                else {
                    $("#ShowBusinessFlowerNotice").hide();
                }
                if (class1s.indexOf('一品轩蛋糕') > -1 && (class1s.indexOf("鲜花") == -1 && class1s.indexOf("礼篮") == -1)) {
                    $("#ypxCake").show();
                }
                else {
                    $("#ypxCake").hide();
                }
            }
            count();//计算购买的商品金额

            //num add min
            $(".btn.btn-default").click(function () {
                var $input = $(this).siblings("input");
                var sl = 1;
                try {
                    sl = parseInt($input.val());
                }
                catch (ex) { sl = 1; }
                if ($(this).find("i").hasClass("ico-minus")) {
                    if (sl > 1) {
                        $input.val(sl - 1);
                        if (parseInt($input.val()) > 1) {
                            $(this).removeClass("no");
                        }
                        else {
                            $(this).removeClass("no").addClass("no");
                        }
                    }
                } else if ($(this).find("i").hasClass("ico-add")) {
                    if (sl < 99) {
                        $input.val(sl + 1);
                    }
                    $(this).parents(".input-num").find("a").removeClass("no");
                }
                count();
                OperCart("update", "");
            });

            $(".input-num input").change(function () {
                var $input = $(this);
                count();
                OperCart("update", "");
            });

            //购物车操作op:del(删除)、replace(替换)、collect(移入收藏)、update(更新)、submit(提交订单)
            function OperCart(op, pps) {
                var postData = "";
                if (op == "update" || op == "submit") {
                    $(".order-list").each(function () {
                        var $item = $(this);
                        var pp = $item.attr("id");
                        var isChooseBuy = 0;
                        if ($item.find("li[class='selecter']").find("i").hasClass("active")) {
                            isChooseBuy = 1;
                        }
                        var buyNum = $item.find("input[name='cpsl']").val();
                        postData = postData + pp + "," + isChooseBuy + "," + buyNum + ";";
                    })
                }
                try {
                    $.ajax({
                        type: "post", url: "/shopping/opercart/", data: { op: op, pps: pps, postData: postData }, timeout: 10000, dataType: "json", success: function (data) {
                            var status = data.Status;
                            var retValue = data.Datas;
                            if ((op == "replace"||op=="del") && status == 0) {
                                location.href = location.href;
                            }
                            else if (op == "collect")
                            {
                                if (retValue == "notLogin") {
                                    DoGuanZhu(pps);
                                }
                                else {
                                    if (status == 0) {
                                        $("#" + pps).remove();
                                        count();
                                        alert("移入收藏夹成功");
                                        if (retValue == "cartEmpty") {
                                            location.href = "/Shopping/ShopNothing";
                                        }
                                    }
                                }
                            }
                            else if (op == "submit") {
                                if (status == 0) {
                                    if (retValue == "notLogin") {
                                        DoWinLogin();
                                    }
                                    else {
                                        location.href = "/shopping/sendinfo/";
                                    }
                                }
                                else {
                                    alert(data.ErrMsg);
                                }
                            }
                        }
                    })
                }
                catch (ex) {  }
            }
        });
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