<%@ page language="java" pageEncoding="utf-8" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>爱情鲜花|送恋人鲜花|爱人送花（按鲜花用途选购）-中国鲜花礼品网</title>
    <meta name="description" content="爱情鲜花,送恋人鲜花,爱人送花（按鲜花用途选购）-如何给女朋友送花、给恋人送花?中国鲜花礼品网,专业提供爱情鲜花,鲜花礼品网上购物,全国连锁网上花店,3-12小时送达北京上海广州深圳成都等全国各城市" />
    <meta name="keywords" content="爱情鲜花 送恋人鲜花 爱人送花 来中国鲜花礼品网" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit|ie-comp">
    
    
    
    <meta name="mobile-agent" content="format=xhtml; url=https://m.hua.com/aiqingxianhua/">



    <script type="text/javascript" src="../../assets/Scripts/a7b6e458928c4ba4bd7becd1307da78f.js"></script>
    <link rel="icon" href="/favicon.ico" mce_href="/favicon.ico" type="image/x-icon">
    
    

    <link type="text/css" rel="stylesheet" href="../../assets/Css/common.css">
    <link type="text/css" rel="stylesheet" href="../../assets/Css/public.css">
    <link type="text/css" rel="stylesheet" href="../../assets/Css/mbar.css" />
    

    
    



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
<body class="flower">
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
                        <img src="../../assets/Picture/wechat_qrcode.jpg" height="124" width="124">
                        <p>扫码关注<br>回复"礼物" 更多惊喜！</p>
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
                    中国鲜花礼品网-爱情鲜花
                </li>
            </ul>
        </div>
    </div>
    <!-- 顶部导航 End -->
    <!-- 头部 -->
    <header>
        <div class="logo">
            <h1><a href="/" class="logo-bd">爱情鲜花</a></h1>
            <i></i>
            
        <h2>中国鲜花礼品网 始于2005，简称花礼网</h2>
    

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
            
    

    <span class="help-block"><a href="/hongmeigui/">红玫瑰</a> | <a href="/yongshenghua/">永生花</a> | <a href="/shengriliwu/">生日鲜花</a> | <a href="/gifts/goldenflower/">金玫瑰</a></span>


        </div>
        <div class="service">
            <span class="ico ico-phone"></span>400-889-8188
            <a href="/chat/" target="_blank"><span class="ico ico-headset"></span>在线客服</a>
        </div>
    </header>
    <!-- 头部 End -->
    
<!-- 导航 -->
<nav class="common">
    <div class="container">
        <div class="categorys dropdown">
            <h3 class="categorys-title" data-hover="dropdown" data-delay="0">
                <a href="/all.html"><span class="pull-right glyphicon glyphicon-menu-down"></span>全部商品导购</a>
            </h3>

            <div class="dropdown-menu dropdown-cate">
                <h4><a href="/flower/">鲜花</a></h4>
                <ul class="cate-list list-inline">
                    <li><a target="_blank" href="/aiqingxianhua/">爱情鲜花</a></li>
                    <li><a target="_blank" href="/shengriliwu/">生日鲜花</a></li>
                    <li><a target="_blank" href="/youqingxianhua/">友情鲜花</a></li>
                    <li><a target="_blank" href="/songzhangbeixianhua/">问候长辈</a></li>
                    <li><a target="_blank" href="/zhufuqinghexianhua/">祝贺鲜花</a></li>
                    <li><a target="_blank" href="/hunqingxianhua/">婚庆鲜花</a></li>
                    <li><a target="_blank" href="/tanbingweiwenxianhua/">探病慰问</a></li>
                    <li><a target="_blank" href="/daoqianxianhua/">道歉鲜花</a></li>
                    <li><a target="_blank" href="/businessFlower/kaiyehualan/">开业花篮</a></li>
                </ul>
                <h4><a href="/yongshenghua/">永生花</a></h4>
                <ul class="cate-list list-inline">
                    <li><a target="_blank" href="/yongshenghua/yongshenghua_box.html">经典花盒</a></li>
                    <li><a target="_blank" href="/yongshenghua/yongshenghua_large.html">巨型玫瑰</a></li>
                    <li><a target="_blank" href="/yongshenghua/yongshenghua_lavender.html">薰衣草</a></li>
                    <li><a target="_blank" href="/yongshenghua/yongshenghua_vase.html">永生瓶花</a></li>
                    <li><a target="_blank" href="/yongshenghua/yongshenghua_characteristic.html">特色永生花</a></li>
                </ul>
                <h4><a href="/cake/">蛋糕</a></h4>
                <ul class="cate-list list-inline">
                    <li><a target="_blank" href="/cake/ganso/">元祖</a></li>
                    <li><a target="_blank" href="/cake/incake/">INCAKE</a></li>
                    <li><a target="_blank" href="/cake/xfxb/">幸福西饼</a></li>
                    <li><a target="_blank" href="/cake/lecake/">诺心</a></li>
                    <li><a target="_blank" href="/cake/waffleboy/">窝夫小子</a></li>
                    <li><a target="_blank" href="/cake/mcake/">Mcake</a></li>
                    <li><a target="_blank" href="/cake/micamika/">米卡米卡</a></li>
                    <li><a target="_blank" href="/cake/vcake/">Vcake</a></li>
                    <li><a target="_blank" href="/cake/yipinxuan/">一品轩</a></li>
                    <li><a target="_blank" href="/cake/mzmk/">美滋每客</a></li>
                    <li><a target="_blank" href="/cake/beisike/">贝思客</a></li>
                    <li><a target="_blank" href="/cake/boncake/">BONCAKE</a></li>
                    <li><a target="_blank" href="/cake/faxini/">法西妮蛋糕</a></li>
                    <li><a target="_blank" href="/cake/heartcheesecake/">心之和蛋糕</a></li>
                    <li><a target="_blank" href="/cake/allcitycake/">全国品牌</a></li>
                </ul>
                <h4><a href="/gifts/">礼品</a></h4>
                <ul class="cate-list list-inline">
                    <li><a target="_blank" href="/livingflower/">泰国保鲜花</a></li>
                    <li><a target="_blank" href="/gifts/musicbox/">音乐盒</a></li>
                    <li><a target="_blank" href="/gifts/crystallaser/">水晶内雕</a></li>
                    <li><a target="_blank" href="/gifts/goldenflower/">金箔花</a></li>
                    <li><a target="_blank" href="/gifts/cosmeticmirror/">化妆镜</a></li>
                    <li><a target="_blank" href="/gifts/kingking/">香薰系列</a></li>
                    <li><a target="_blank" href="/gifts/bestlife/">音乐睡枕</a></li>
                    <li><a target="_blank" href="/gifts/vase/">花瓶/相框</a></li>
                    <li><a target="_blank" href="/katonghuashu/">卡通花束</a></li>
                    <li><a target="_blank" href="/toys/">品牌公仔</a></li>
                    <li><a target="_blank" href="/gifts/shoushi/">首饰</a></li>
                    <li><a target="_blank" href="/gifts/jinkouqiaokeli/">进口巧克力</a></li>
                    <li><a target="_blank" href="/gifts/chocolate/">手工巧克力</a></li>
                    <li><a target="_blank" href="/gifts/qiaokouqiaokeli/">巧蔻巧克力</a></li>
                    <li><a target="_blank" href="/gifts/lindtchocolate/">瑞士莲巧克力</a></li>
                    <li><a target="_blank" href="/gifts/giftstalk/">Giftstalk精选</a></li>
                    <li><a target="_blank" href="/gifts/dengshi/">创意礼品</a></li>
                    <li><a target="_blank" href="/qiyetuangou/gift_card.html">礼品卡</a></li>
                    <li><a target="_blank" href="/gifts/duorouzhiwupenzai/">多肉植物盆栽</a></li>
                </ul>
                <h4><a href="/Plant/">绿植</a></h4>
                <ul class="cate-list list-inline">
                    <li><a target="_blank" href="/Plant/greenplant/">绿色植物</a></li>
                    <li><a target="_blank" href="/Plant/potflower/">盆栽花卉</a></li>
                </ul>
            </div>
        </div>
        <ul class="nav">
            <li><a href="/">首页</a></li>
            <li><a href="/flower/">鲜花</a></li>
            <li><a href="/yongshenghua/">永生花</a></li>
            <li><a href="/cake/">蛋糕</a></li>
            <li><a href="/gifts/">礼品</a></li>
            <li><a href="/gifts/chocolates/">巧克力</a></li>
            <li><a href="/huayu/">花语大全</a></li>
            <li><a href="/you/">设计师臻选鲜花</a></li>
            <li><a href="/theme/mothersday/">母亲节鲜花</a></li>
        </ul>
    </div>
</nav>
<!-- 导航 End -->

<!-- 内容 -->
<div class="container">
    
    <div class="breadcrumbs"><a href="/">首页</a> &gt; <a href="/flower/">鲜花</a> &gt; 爱情鲜花</div>

    <div class="wrapper">
        <div class="pull-left w970 l230">
            <!-- 大图轮播 -->
            
<div id="flowerCarousel" class="carousel slide carousel-fade">
    <div class="carousel-inner">
        <div class="item active">
            <img src="../../assets/Picture/flower_bannerlove_171019.jpg" alt="爱情鲜花">
        </div>
    </div>
</div>

            <!-- 大图轮播 End -->
            <!-- 筛选 -->
                <div class="filterbar">
                    <ul class="filter-items list-inline">
                        <li class='active'><a href="?r=0">综合</a></li>
                        <li class=''><a href="?r=5">销量<span class="glyphicon glyphicon-triangle-bottom"></span></a></li>
                            <li class=''><a href="?r=1">价格<span class="glyphicon glyphicon-triangle-bottom"></span></a></li>
                        <li class=''><a href="?r=3">最新<span class="glyphicon glyphicon-triangle-bottom"></span></a></li>
                    </ul>
                    <ul class="pager">
                        <li class="total-page"><strong class="text-primary">1</strong>/6</li>
                            <li class="disabled"><a href="javascript:void(0)"><span class="glyphicon glyphicon-menu-left"></span></a></li>
                                                    <li><a href="?r=0&pg=2"><span class="glyphicon glyphicon-menu-right"></span></a></li>
                    </ul>
                </div>
            <!-- 筛选 End -->
            <!-- 商品列表 -->
                <div class="grid-wrapper">

                            <div class="grid-item">
            <div class="grid-panel">
                <div class="img-box">
                    <a href="/product/9012009.html" target="_blank"><img width="220" height="240" src="../../assets/Picture/9012009.jpg_220x240.jpg" alt="忘情巴黎"></a>
                </div>
                <div class="info-cont">
                    <div class="price">
                        <span class="price-sign">&yen;</span>
                        <span class="price-num">298</span>
                    </div>
                    <div class="title">

                        <a href="/product/9012009.html" target="_blank">
                            <span class="product-title">鲜花/忘情巴黎-33枝红玫瑰</span>
                            <span class="feature">特价</span>
                        </a>
                    </div>
                    <div class="operate">
                        <a href="javascript:DoGuanZhu('9012009')" class="attention"><span class="ico ico-heart-d"></span>收藏</a>
                            <a href="/shopping/AddtoCart?product_code=9012009" class="add-cart" style="margin-left:-5px;"><span class="ico ico-cart-d"></span>加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid-item">
            <div class="grid-panel">
                <div class="img-box">
                    <a href="/product/9010011.html" target="_blank"><img width="220" height="240" src="../../assets/Picture/9010011.jpg_220x240.jpg" alt="一心一意"></a>
                </div>
                <div class="info-cont">
                    <div class="price">
                        <span class="price-sign">&yen;</span>
                        <span class="price-num">139</span>
                    </div>
                    <div class="title">

                        <a href="/product/9010011.html" target="_blank">
                            <span class="product-title">鲜花/一心一意-玫瑰11枝，粉色勿忘我0.3扎</span>
                            <span class="feature">畅销款特惠</span>
                        </a>
                    </div>
                    <div class="operate">
                        <a href="javascript:DoGuanZhu('9010011')" class="attention"><span class="ico ico-heart-d"></span>收藏</a>
                            <a href="/shopping/AddtoCart?product_code=9010011" class="add-cart" style="margin-left:-5px;"><span class="ico ico-cart-d"></span>加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid-item">
            <div class="grid-panel">
                <div class="img-box">
                    <a href="/product/9010966.html" target="_blank"><img width="220" height="240" src="../../assets/Picture/9010966.jpg_220x240.jpg" alt="一往情深"></a>
                </div>
                <div class="info-cont">
                    <div class="price">
                        <span class="price-sign">&yen;</span>
                        <span class="price-num">245</span>
                    </div>
                    <div class="title">

                        <a href="/product/9010966.html" target="_blank">
                            <span class="product-title">鲜花/一往情深-精品玫瑰礼盒:19枝红玫瑰，勿忘我适量</span>
                            <span class="feature"></span>
                        </a>
                    </div>
                    <div class="operate">
                        <a href="javascript:DoGuanZhu('9010966')" class="attention"><span class="ico ico-heart-d"></span>收藏</a>
                            <a href="/shopping/AddtoCart?product_code=9010966" class="add-cart" style="margin-left:-5px;"><span class="ico ico-cart-d"></span>加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid-item">
            <div class="grid-panel">
                <div class="img-box">
                    <a href="/product/9010855.html" target="_blank"><img width="220" height="240" src="../../assets/Picture/9010855.jpg_220x240.jpg" alt="用心爱你"></a>
                </div>
                <div class="info-cont">
                    <div class="price">
                        <span class="price-sign">&yen;</span>
                        <span class="price-num">599</span>
                    </div>
                    <div class="title">

                        <a href="/product/9010855.html" target="_blank">
                            <span class="product-title">鲜花/用心爱你-张杰深圳演唱会求婚花束，我司应邀设计打造</span>
                            <span class="feature"></span>
                        </a>
                    </div>
                    <div class="operate">
                        <a href="javascript:DoGuanZhu('9010855')" class="attention"><span class="ico ico-heart-d"></span>收藏</a>
                            <a href="/shopping/AddtoCart?product_code=9010855" class="add-cart" style="margin-left:-5px;"><span class="ico ico-cart-d"></span>加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid-item">
            <div class="grid-panel">
                <div class="img-box">
                    <a href="/product/9012236.html" target="_blank"><img width="220" height="240" src="../../assets/Picture/9012236.jpg_220x240.jpg" alt="白羊座守护花"></a>
                </div>
                <div class="info-cont">
                    <div class="price">
                        <span class="price-sign">&yen;</span>
                        <span class="price-num">249</span>
                    </div>
                    <div class="title">

                        <a href="/product/9012236.html" target="_blank">
                            <span class="product-title">鲜花/白羊座守护花-红色扶郎12枝 ，黄色乒乓菊7枝</span>
                            <span class="feature">白羊座鲜花定制款</span>
                        </a>
                    </div>
                    <div class="operate">
                        <a href="javascript:DoGuanZhu('9012236')" class="attention"><span class="ico ico-heart-d"></span>收藏</a>
                            <a href="/shopping/AddtoCart?product_code=9012236" class="add-cart" style="margin-left:-5px;"><span class="ico ico-cart-d"></span>加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid-item">
            <div class="grid-panel">
                <div class="img-box">
                    <a href="/product/9012177.html" target="_blank"><img width="220" height="240" src="../../assets/Picture/9012177.jpg_220x240.jpg" alt="不变的承诺"></a>
                </div>
                <div class="info-cont">
                    <div class="price">
                        <span class="price-sign">&yen;</span>
                        <span class="price-num">569</span>
                    </div>
                    <div class="title">

                        <a href="/product/9012177.html" target="_blank">
                            <span class="product-title">鲜花/不变的承诺-99枝红玫瑰</span>
                            <span class="feature">精选特惠款</span>
                        </a>
                    </div>
                    <div class="operate">
                        <a href="javascript:DoGuanZhu('9012177')" class="attention"><span class="ico ico-heart-d"></span>收藏</a>
                            <a href="/shopping/AddtoCart?product_code=9012177" class="add-cart" style="margin-left:-5px;"><span class="ico ico-cart-d"></span>加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid-item">
            <div class="grid-panel">
                <div class="img-box">
                    <a href="/product/9012154.html" target="_blank"><img width="220" height="240" src="../../assets/Picture/9012154.jpg_220x240.jpg" alt="甜美公主"></a>
                </div>
                <div class="info-cont">
                    <div class="price">
                        <span class="price-sign">&yen;</span>
                        <span class="price-num">378</span>
                    </div>
                    <div class="title">

                        <a href="/product/9012154.html" target="_blank">
                            <span class="product-title">鲜花/甜美公主-白玫瑰22枝，粉佳人粉玫瑰14枝，粉色桔梗5枝</span>
                            <span class="feature"></span>
                        </a>
                    </div>
                    <div class="operate">
                        <a href="javascript:DoGuanZhu('9012154')" class="attention"><span class="ico ico-heart-d"></span>收藏</a>
                            <a href="/shopping/AddtoCart?product_code=9012154" class="add-cart" style="margin-left:-5px;"><span class="ico ico-cart-d"></span>加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid-item">
            <div class="grid-panel">
                <div class="img-box">
                    <a href="/product/9012243.html" target="_blank"><img width="220" height="240" src="../../assets/Picture/9012243.jpg_220x240.jpg" alt="恋恋情深"></a>
                </div>
                <div class="info-cont">
                    <div class="price">
                        <span class="price-sign">&yen;</span>
                        <span class="price-num">199</span>
                    </div>
                    <div class="title">

                        <a href="/product/9012243.html" target="_blank">
                            <span class="product-title">鲜花/恋恋情深-11枝香槟玫瑰，白百合2枝</span>
                            <span class="feature">特价！</span>
                        </a>
                    </div>
                    <div class="operate">
                        <a href="javascript:DoGuanZhu('9012243')" class="attention"><span class="ico ico-heart-d"></span>收藏</a>
                            <a href="/shopping/AddtoCart?product_code=9012243" class="add-cart" style="margin-left:-5px;"><span class="ico ico-cart-d"></span>加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid-item">
            <div class="grid-panel">
                <div class="img-box">
                    <a href="/product/9012060.html" target="_blank"><img width="220" height="240" src="../../assets/Picture/9012060.jpg_220x240.jpg" alt="眷念"></a>
                </div>
                <div class="info-cont">
                    <div class="price">
                        <span class="price-sign">&yen;</span>
                        <span class="price-num">298</span>
                    </div>
                    <div class="title">

                        <a href="/product/9012060.html" target="_blank">
                            <span class="product-title">鲜花/眷念-戴安娜粉玫瑰33枝，石竹梅围绕</span>
                            <span class="feature">特惠款</span>
                        </a>
                    </div>
                    <div class="operate">
                        <a href="javascript:DoGuanZhu('9012060')" class="attention"><span class="ico ico-heart-d"></span>收藏</a>
                            <a href="/shopping/AddtoCart?product_code=9012060" class="add-cart" style="margin-left:-5px;"><span class="ico ico-cart-d"></span>加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid-item">
            <div class="grid-panel">
                <div class="img-box">
                    <a href="/product/9010947.html" target="_blank"><img width="220" height="240" src="../../assets/Picture/9010947.jpg_220x240.jpg" alt="真爱如初"></a>
                </div>
                <div class="info-cont">
                    <div class="price">
                        <span class="price-sign">&yen;</span>
                        <span class="price-num">206</span>
                    </div>
                    <div class="title">

                        <a href="/product/9010947.html" target="_blank">
                            <span class="product-title">鲜花/真爱如初-雪山玫瑰11枝、深紫色勿忘我0.3扎</span>
                            <span class="feature"></span>
                        </a>
                    </div>
                    <div class="operate">
                        <a href="javascript:DoGuanZhu('9010947')" class="attention"><span class="ico ico-heart-d"></span>收藏</a>
                            <a href="/shopping/AddtoCart?product_code=9010947" class="add-cart" style="margin-left:-5px;"><span class="ico ico-cart-d"></span>加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid-item">
            <div class="grid-panel">
                <div class="img-box">
                    <a href="/product/9012223.html" target="_blank"><img width="220" height="240" src="../../assets/Picture/9012223.jpg_220x240.jpg" alt="我只钟情你"></a>
                </div>
                <div class="info-cont">
                    <div class="price">
                        <span class="price-sign">&yen;</span>
                        <span class="price-num">239</span>
                    </div>
                    <div class="title">

                        <a href="/product/9012223.html" target="_blank">
                            <span class="product-title">鲜花/我只钟情你-香槟玫瑰11枝、白色小雏菊3枝</span>
                            <span class="feature">特价</span>
                        </a>
                    </div>
                    <div class="operate">
                        <a href="javascript:DoGuanZhu('9012223')" class="attention"><span class="ico ico-heart-d"></span>收藏</a>
                            <a href="/shopping/AddtoCart?product_code=9012223" class="add-cart" style="margin-left:-5px;"><span class="ico ico-cart-d"></span>加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid-item">
            <div class="grid-panel">
                <div class="img-box">
                    <a href="/product/9012175.html" target="_blank"><img width="220" height="240" src="../../assets/Picture/9012175.jpg_220x240.jpg" alt="月光女神"></a>
                </div>
                <div class="info-cont">
                    <div class="price">
                        <span class="price-sign">&yen;</span>
                        <span class="price-num">238</span>
                    </div>
                    <div class="title">

                        <a href="/product/9012175.html" target="_blank">
                            <span class="product-title">鲜花/月光女神-白玫瑰11枝，绿色桔梗5枝，小菊3枝，白色石竹梅4枝</span>
                            <span class="feature">精选特惠款</span>
                        </a>
                    </div>
                    <div class="operate">
                        <a href="javascript:DoGuanZhu('9012175')" class="attention"><span class="ico ico-heart-d"></span>收藏</a>
                            <a href="/shopping/AddtoCart?product_code=9012175" class="add-cart" style="margin-left:-5px;"><span class="ico ico-cart-d"></span>加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid-item">
            <div class="grid-panel">
                <div class="img-box">
                    <a href="/product/9012089.html" target="_blank"><img width="220" height="240" src="../../assets/Picture/9012089.jpg_220x240.jpg" alt="爱在心头"></a>
                </div>
                <div class="info-cont">
                    <div class="price">
                        <span class="price-sign">&yen;</span>
                        <span class="price-num">369</span>
                    </div>
                    <div class="title">

                        <a href="/product/9012089.html" target="_blank">
                            <span class="product-title">鲜花/爱在心头-玫瑰50枝：戴安娜粉玫瑰19枝，红玫瑰31枝</span>
                            <span class="feature">特惠款</span>
                        </a>
                    </div>
                    <div class="operate">
                        <a href="javascript:DoGuanZhu('9012089')" class="attention"><span class="ico ico-heart-d"></span>收藏</a>
                            <a href="/shopping/AddtoCart?product_code=9012089" class="add-cart" style="margin-left:-5px;"><span class="ico ico-cart-d"></span>加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid-item">
            <div class="grid-panel">
                <div class="img-box">
                    <a href="/product/9012078.html" target="_blank"><img width="220" height="240" src="../../assets/Picture/9012078.jpg_220x240.jpg" alt="你的香气"></a>
                </div>
                <div class="info-cont">
                    <div class="price">
                        <span class="price-sign">&yen;</span>
                        <span class="price-num">139</span>
                    </div>
                    <div class="title">

                        <a href="/product/9012078.html" target="_blank">
                            <span class="product-title">鲜花/你的香气-戴安娜粉玫瑰9枝</span>
                            <span class="feature"></span>
                        </a>
                    </div>
                    <div class="operate">
                        <a href="javascript:DoGuanZhu('9012078')" class="attention"><span class="ico ico-heart-d"></span>收藏</a>
                            <a href="/shopping/AddtoCart?product_code=9012078" class="add-cart" style="margin-left:-5px;"><span class="ico ico-cart-d"></span>加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid-item">
            <div class="grid-panel">
                <div class="img-box">
                    <a href="/product/9012167.html" target="_blank"><img width="220" height="240" src="../../assets/Picture/9012167.jpg_220x240.jpg" alt="爱的小确幸"></a>
                </div>
                <div class="info-cont">
                    <div class="price">
                        <span class="price-sign">&yen;</span>
                        <span class="price-num">308</span>
                    </div>
                    <div class="title">

                        <a href="/product/9012167.html" target="_blank">
                            <span class="product-title">鲜花/爱的小确幸-戴安娜粉玫瑰21枝，粉色桔梗5枝，石竹梅7枝</span>
                            <span class="feature">特价</span>
                        </a>
                    </div>
                    <div class="operate">
                        <a href="javascript:DoGuanZhu('9012167')" class="attention"><span class="ico ico-heart-d"></span>收藏</a>
                            <a href="/shopping/AddtoCart?product_code=9012167" class="add-cart" style="margin-left:-5px;"><span class="ico ico-cart-d"></span>加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid-item">
            <div class="grid-panel">
                <div class="img-box">
                    <a href="/product/9012125.html" target="_blank"><img width="220" height="240" src="../../assets/Picture/9012125.jpg_220x240.jpg" alt="缪斯女神"></a>
                </div>
                <div class="info-cont">
                    <div class="price">
                        <span class="price-sign">&yen;</span>
                        <span class="price-num">189</span>
                    </div>
                    <div class="title">

                        <a href="/product/9012125.html" target="_blank">
                            <span class="product-title">鲜花/缪斯女神-红玫瑰16枝，红豆5枝，粉色桔梗1枝，银叶菊2枝</span>
                            <span class="feature"></span>
                        </a>
                    </div>
                    <div class="operate">
                        <a href="javascript:DoGuanZhu('9012125')" class="attention"><span class="ico ico-heart-d"></span>收藏</a>
                            <a href="/shopping/AddtoCart?product_code=9012125" class="add-cart" style="margin-left:-5px;"><span class="ico ico-cart-d"></span>加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid-item">
            <div class="grid-panel">
                <div class="img-box">
                    <a href="/product/9012033.html" target="_blank"><img width="220" height="240" src="../../assets/Picture/9012033.jpg_220x240.jpg" alt="为爱相随"></a>
                </div>
                <div class="info-cont">
                    <div class="price">
                        <span class="price-sign">&yen;</span>
                        <span class="price-num">179</span>
                    </div>
                    <div class="title">

                        <a href="/product/9012033.html" target="_blank">
                            <span class="product-title">鲜花/为爱相随-多头百合1枝，戴安娜粉玫瑰11枝</span>
                            <span class="feature">特价</span>
                        </a>
                    </div>
                    <div class="operate">
                        <a href="javascript:DoGuanZhu('9012033')" class="attention"><span class="ico ico-heart-d"></span>收藏</a>
                            <a href="/shopping/AddtoCart?product_code=9012033" class="add-cart" style="margin-left:-5px;"><span class="ico ico-cart-d"></span>加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid-item">
            <div class="grid-panel">
                <div class="img-box">
                    <a href="/product/9012180.html" target="_blank"><img width="220" height="240" src="../../assets/Picture/9012180.jpg_220x240.jpg" alt="三生三世"></a>
                </div>
                <div class="info-cont">
                    <div class="price">
                        <span class="price-sign">&yen;</span>
                        <span class="price-num">299</span>
                    </div>
                    <div class="title">

                        <a href="/product/9012180.html" target="_blank">
                            <span class="product-title">鲜花/三生三世-33枝红玫瑰</span>
                            <span class="feature"></span>
                        </a>
                    </div>
                    <div class="operate">
                        <a href="javascript:DoGuanZhu('9012180')" class="attention"><span class="ico ico-heart-d"></span>收藏</a>
                            <a href="/shopping/AddtoCart?product_code=9012180" class="add-cart" style="margin-left:-5px;"><span class="ico ico-cart-d"></span>加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid-item">
            <div class="grid-panel">
                <div class="img-box">
                    <a href="/product/9012061.html" target="_blank"><img width="220" height="240" src="../../assets/Picture/9012061.jpg_220x240.jpg" alt="恋恋不忘"></a>
                </div>
                <div class="info-cont">
                    <div class="price">
                        <span class="price-sign">&yen;</span>
                        <span class="price-num">639</span>
                    </div>
                    <div class="title">

                        <a href="/product/9012061.html" target="_blank">
                            <span class="product-title">鲜花/恋恋不忘-香槟玫瑰99枝，叶上花围绕</span>
                            <span class="feature">特价促销</span>
                        </a>
                    </div>
                    <div class="operate">
                        <a href="javascript:DoGuanZhu('9012061')" class="attention"><span class="ico ico-heart-d"></span>收藏</a>
                            <a href="/shopping/AddtoCart?product_code=9012061" class="add-cart" style="margin-left:-5px;"><span class="ico ico-cart-d"></span>加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid-item">
            <div class="grid-panel">
                <div class="img-box">
                    <a href="/product/9010849.html" target="_blank"><img width="220" height="240" src="../../assets/Picture/9010849.jpg_220x240.jpg" alt="缘份"></a>
                </div>
                <div class="info-cont">
                    <div class="price">
                        <span class="price-sign">&yen;</span>
                        <span class="price-num">199</span>
                    </div>
                    <div class="title">

                        <a href="/product/9010849.html" target="_blank">
                            <span class="product-title">鲜花/缘份-11枝红玫瑰,2枝多头白香水百合</span>
                            <span class="feature"></span>
                        </a>
                    </div>
                    <div class="operate">
                        <a href="javascript:DoGuanZhu('9010849')" class="attention"><span class="ico ico-heart-d"></span>收藏</a>
                            <a href="/shopping/AddtoCart?product_code=9010849" class="add-cart" style="margin-left:-5px;"><span class="ico ico-cart-d"></span>加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid-item">
            <div class="grid-panel">
                <div class="img-box">
                    <a href="/product/9010877.html" target="_blank"><img width="220" height="240" src="../../assets/Picture/9010877.jpg_220x240.jpg" alt="致美丽的你"></a>
                </div>
                <div class="info-cont">
                    <div class="price">
                        <span class="price-sign">&yen;</span>
                        <span class="price-num">149</span>
                    </div>
                    <div class="title">

                        <a href="/product/9010877.html" target="_blank">
                            <span class="product-title">鲜花/致美丽的你-红玫瑰11枝，满天星围绕，栀子叶0.5扎</span>
                            <span class="feature"></span>
                        </a>
                    </div>
                    <div class="operate">
                        <a href="javascript:DoGuanZhu('9010877')" class="attention"><span class="ico ico-heart-d"></span>收藏</a>
                            <a href="/shopping/AddtoCart?product_code=9010877" class="add-cart" style="margin-left:-5px;"><span class="ico ico-cart-d"></span>加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid-item">
            <div class="grid-panel">
                <div class="img-box">
                    <a href="/product/9012150.html" target="_blank"><img width="220" height="240" src="../../assets/Picture/9012150.jpg_220x240.jpg" alt="幸福久久"></a>
                </div>
                <div class="info-cont">
                    <div class="price">
                        <span class="price-sign">&yen;</span>
                        <span class="price-num">569</span>
                    </div>
                    <div class="title">

                        <a href="/product/9012150.html" target="_blank">
                            <span class="product-title">鲜花/幸福久久-戴安娜粉玫瑰99枝，栀子叶适量</span>
                            <span class="feature">99枝粉玫特惠款</span>
                        </a>
                    </div>
                    <div class="operate">
                        <a href="javascript:DoGuanZhu('9012150')" class="attention"><span class="ico ico-heart-d"></span>收藏</a>
                            <a href="/shopping/AddtoCart?product_code=9012150" class="add-cart" style="margin-left:-5px;"><span class="ico ico-cart-d"></span>加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid-item">
            <div class="grid-panel">
                <div class="img-box">
                    <a href="/product/9010804.html" target="_blank"><img width="220" height="240" src="../../assets/Picture/9010804.jpg_220x240.jpg" alt="真爱"></a>
                </div>
                <div class="info-cont">
                    <div class="price">
                        <span class="price-sign">&yen;</span>
                        <span class="price-num">129</span>
                    </div>
                    <div class="title">

                        <a href="/product/9010804.html" target="_blank">
                            <span class="product-title">鲜花/真爱-红玫瑰9枝，石竹梅4枝，栀子叶0.5扎</span>
                            <span class="feature">畅销款特惠</span>
                        </a>
                    </div>
                    <div class="operate">
                        <a href="javascript:DoGuanZhu('9010804')" class="attention"><span class="ico ico-heart-d"></span>收藏</a>
                            <a href="/shopping/AddtoCart?product_code=9010804" class="add-cart" style="margin-left:-5px;"><span class="ico ico-cart-d"></span>加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid-item">
            <div class="grid-panel">
                <div class="img-box">
                    <a href="/product/9010668.html" target="_blank"><img width="220" height="240" src="../../assets/Picture/9010668.jpg_220x240.jpg" alt="LOVE 99"></a>
                </div>
                <div class="info-cont">
                    <div class="price">
                        <span class="price-sign">&yen;</span>
                        <span class="price-num">569</span>
                    </div>
                    <div class="title">

                        <a href="/product/9010668.html" target="_blank">
                            <span class="product-title">鲜花/LOVE 99-99枝精品红玫瑰花束</span>
                            <span class="feature">99枝玫瑰特惠款</span>
                        </a>
                    </div>
                    <div class="operate">
                        <a href="javascript:DoGuanZhu('9010668')" class="attention"><span class="ico ico-heart-d"></span>收藏</a>
                            <a href="/shopping/AddtoCart?product_code=9010668" class="add-cart" style="margin-left:-5px;"><span class="ico ico-cart-d"></span>加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid-item">
            <div class="grid-panel">
                <div class="img-box">
                    <a href="/product/9012038.html" target="_blank"><img width="220" height="240" src="../../assets/Picture/9012038.jpg_220x240.jpg" alt="依靠"></a>
                </div>
                <div class="info-cont">
                    <div class="price">
                        <span class="price-sign">&yen;</span>
                        <span class="price-num">166</span>
                    </div>
                    <div class="title">

                        <a href="/product/9012038.html" target="_blank">
                            <span class="product-title">鲜花/依靠-戴安娜12枝，紫色桔梗5枝，粉色勿忘我3枝</span>
                            <span class="feature"></span>
                        </a>
                    </div>
                    <div class="operate">
                        <a href="javascript:DoGuanZhu('9012038')" class="attention"><span class="ico ico-heart-d"></span>收藏</a>
                            <a href="/shopping/AddtoCart?product_code=9012038" class="add-cart" style="margin-left:-5px;"><span class="ico ico-cart-d"></span>加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid-item">
            <div class="grid-panel">
                <div class="img-box">
                    <a href="/product/9012030.html" target="_blank"><img width="220" height="240" src="../../assets/Picture/9012030.jpg_220x240.jpg" alt="天使的心跳"></a>
                </div>
                <div class="info-cont">
                    <div class="price">
                        <span class="price-sign">&yen;</span>
                        <span class="price-num">226</span>
                    </div>
                    <div class="title">

                        <a href="/product/9012030.html" target="_blank">
                            <span class="product-title">鲜花/天使的心跳-粉佳人粉玫瑰19枝，粉色桔梗6枝</span>
                            <span class="feature"></span>
                        </a>
                    </div>
                    <div class="operate">
                        <a href="javascript:DoGuanZhu('9012030')" class="attention"><span class="ico ico-heart-d"></span>收藏</a>
                            <a href="/shopping/AddtoCart?product_code=9012030" class="add-cart" style="margin-left:-5px;"><span class="ico ico-cart-d"></span>加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid-item">
            <div class="grid-panel">
                <div class="img-box">
                    <a href="/product/9010949.html" target="_blank"><img width="220" height="240" src="../../assets/Picture/9010949.jpg_220x240.jpg" alt="恰似你的温柔"></a>
                </div>
                <div class="info-cont">
                    <div class="price">
                        <span class="price-sign">&yen;</span>
                        <span class="price-num">206</span>
                    </div>
                    <div class="title">

                        <a href="/product/9010949.html" target="_blank">
                            <span class="product-title">鲜花/恰似你的温柔-精品玫瑰礼盒,香槟玫瑰11枝、深紫色勿忘我0.3扎</span>
                            <span class="feature"></span>
                        </a>
                    </div>
                    <div class="operate">
                        <a href="javascript:DoGuanZhu('9010949')" class="attention"><span class="ico ico-heart-d"></span>收藏</a>
                            <a href="/shopping/AddtoCart?product_code=9010949" class="add-cart" style="margin-left:-5px;"><span class="ico ico-cart-d"></span>加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid-item">
            <div class="grid-panel">
                <div class="img-box">
                    <a href="/product/9012208.html" target="_blank"><img width="220" height="240" src="../../assets/Picture/9012208.jpg_220x240.jpg" alt="甜蜜纪事"></a>
                </div>
                <div class="info-cont">
                    <div class="price">
                        <span class="price-sign">&yen;</span>
                        <span class="price-num">399</span>
                    </div>
                    <div class="title">

                        <a href="/product/9012208.html" target="_blank">
                            <span class="product-title">鲜花/甜蜜纪事-玫瑰共50枝：红玫瑰11枝、香槟玫瑰19枝、戴安娜粉玫瑰20枝</span>
                            <span class="feature"></span>
                        </a>
                    </div>
                    <div class="operate">
                        <a href="javascript:DoGuanZhu('9012208')" class="attention"><span class="ico ico-heart-d"></span>收藏</a>
                            <a href="/shopping/AddtoCart?product_code=9012208" class="add-cart" style="margin-left:-5px;"><span class="ico ico-cart-d"></span>加入购物车</a>
                    </div>
                </div>
            </div>
        </div>

                </div>
            <!-- 商品列表 End -->
            <!-- 分页 -->
                        <div class="page-wrapper">

                            <p class="total-page">1-6 / 共161件商品</p>
                            <ul class="pagination">
                                    <li class="disabled"><a href="#"><span class="glyphicon glyphicon-menu-left"></span> 上一页</a></li>
                                                                
                                        <li class="active"><a href="javascript:void(0)">1</a></li>
                                        <li><a href="?r=0&pg=2">2</a></li>
                                        <li><a href="?r=0&pg=3">3</a></li>
                                        <li><a href="?r=0&pg=4">4</a></li>
                                        <li><a href="?r=0&pg=5">5</a></li>
                                        <li><a href="?r=0&pg=6">6</a></li>
                                                                                                    <li><a href="?r=0&pg=2">下一页 <span class="glyphicon glyphicon-menu-right"></span></a></li>
                            </ul>
                        </div>
            <!-- 分页 End -->
        </div>
        <div class="pull-left w210 r970">
            <!-- 分类 -->
            <div class="navigation">
                <div class="item">
                    <div class="title">
                        <span class="ico ico-effect"></span>
                        <h4>用途</h4>
                    </div>
                    <ul class="item-list list-inline">
                        <li><a href="/aiqingxianhua/">爱情鲜花</a></li>
                        <li><a href="/youqingxianhua/">友情鲜花</a></li>
                        <li><a href="/shengriliwu/" target="_blank">生日鲜花</a></li>
                        <li><a href="/songzhangbeixianhua/">问候长辈</a></li>
                        <li><a href="/songlaoshixianhua/">回报老师</a></li>
                        <li><a href="/tanbingweiwenxianhua/">探病慰问</a></li>
                        <li><a href="/daoqianxianhua/">道歉鲜花</a></li>
                        <li><a href="/hunqingxianhua/">婚庆鲜花</a></li>
                        <li><a href="/zhufuqinghexianhua/">祝贺鲜花</a></li>
                        <li><a href="/aisixianhua/">哀思鲜花</a></li>
                        <li><a href="/businessFlower/">商务鲜花</a></li>
                        <li><a href="/businessFlower/kaiyehualan/">开业花篮</a></li>
                        <li><a href="/florist/">自选鲜花</a></li>
                        <li><a href="/worldflora/">港澳台送花</a></li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title">
                        <span class="ico ico-texture"></span>
                        <h4>花材</h4>
                    </div>
                    <ul class="item-list list-inline">
                        <li><a href="/meigui/">玫瑰</a></li>
                        <li><a href="/hongmeigui/">红玫瑰</a></li>
                        <li><a href="/fenmeigui/">粉玫瑰</a></li>
                        <li><a href="/baimeigui/">白玫瑰</a></li>
                        <li><a href="/zimeigui/">紫玫瑰</a></li>
                        <li><a href="/lanmeigui/">蓝玫瑰</a></li>
                        <li><a href="/xiangbinmeigui/">香槟玫瑰</a></li>
                        <li><a href="/huangmeigui/">黄玫瑰</a></li>
                        <li><a href="/kangnaixin/">康乃馨</a></li>
                        <li><a href="/baihe/">百合</a></li>
                        <li><a href="/fulang/">扶郎</a></li>
                        <li><a href="/xiangrikui/">向日葵</a></li>
                        <li><a href="/yujinxiang/">郁金香</a></li>
                        <li><a href="/matilian/">马蹄莲</a></li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title">
                        <span class="ico ico-color"></span>
                        <h4>颜色</h4>
                    </div>
                    <ul class="item-list list-inline">
                        <li><a href="/hongsexianhua/"><span class="c-red"></span>红色</a></li>
                        <li><a href="/fensexianhua/"><span class="c-pink"></span>粉色</a></li>
                        <li><a href="/xiangbinsexianhua/"><span class="c-champagne"></span>香槟</a></li>
                        <li><a href="/huangsexianhua/"><span class="c-yellow"></span>黄色</a></li>
                        <li><a href="/baisexianhua/"><span class="c-white"></span>白色</a></li>
                        <li><a href="/zisexianhua/"><span class="c-purple"></span>紫色</a></li>
                        <li><a href="/lansexianhua/"><span class="c-blue"></span>蓝色</a></li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title">
                        <span class="ico ico-sort"></span>
                        <h4>类别</h4>
                    </div>
                    <ul class="item-list list-inline">
                        <li><a href="/huashu/">花束</a></li>
                        <li><a href="/hezhuanghua/">花盒</a></li>
                        <li><a href="/pingchahua/">瓶花</a></li>
                        <li><a href="/flower/JingPinXianHua/">精品鲜花</a></li>
                        <li><a href="/giftsBasket/">果篮</a></li>
                        <li><a href="/hualan/">桌面花篮</a></li>
                        <li><a href="/businessFlower/kaiyehualan/">开业花蓝</a></li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title">
                        <span class="ico ico-price"></span>
                        <h4>价格</h4>
                    </div>
                    <ul class="item-list list-inline">
                        <li><a href="/tejiaxianhua/">特价鲜花</a></li>
                        <li><a href="/xianhuajiage/0-150/">150元以下</a></li>
                        <li><a href="/xianhuajiage/150-250/">150-250元</a></li>
                        <li><a href="/xianhuajiage/250-350/">250-350元</a></li>
                        <li><a href="/xianhuajiage/350-550/">350-550元</a></li>
                        <li><a href="/xianhuajiage/550-800/">550-800元</a></li>
                        <li><a href="/xianhuajiage/800-99999/">800元以上</a></li>
                    </ul>
                </div>
                <div class="item last-child">
                    <div class="title">
                        <span class="ico ico-num"></span>
                        <h4>枝数</h4>
                    </div>
                    <ul class="item-list list-special list-inline">
                        <li><a href="/jiuduomeigui/">9枝</a></li>
                        <li><a href="/shiduomeigui/">10枝</a></li>
                        <li><a href="/shiyiduomeigui/">11枝</a></li>
                        <li><a href="/shierduomeigui/">12枝</a></li>
                        <li><a href="/shiliuduomeigui/">16枝</a></li>
                        <li><a href="/shibaduomeigui/">18枝</a></li>
                        <li><a href="/shijiuduomeigui/">19枝</a></li>
                        <li><a href="/ershiduomeigui/">20枝</a></li>
                        <li><a href="/ershierduomeigui/">22枝</a></li>
                        <li><a href="/ershijiuduomeigui/">29枝</a></li>
                        <li><a href="/sanshisanduomeigui/">33枝</a></li>
                        <li><a href="/sanshiliuduomeigui/">36枝</a></li>
                        <li><a href="/wushiduomeigui/">50枝</a></li>
                        <li><a href="/liushiliuduomeigui/">66枝</a></li>
                        <li class="last-child"><a href="/jiushijiuduomeigui/">99枝以上</a></li>
                    </ul>
                </div>
            </div>
            <!-- 分类 End -->
            <!-- 热销推荐 -->
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">热销鲜花推荐</h3>
                </div>
                <div class="panel-body">

                            <div class="side-item">
            <div class="img-box">
                <a href="/product/9012288.html" target="_blank"><img src="../../assets/Picture/9012288.jpg_220x240.jpg" width="180" height="196" alt="心连心"></a>
            </div>
            <div class="info-cont">
                <div class="title">
                    <a href="/product/9012288.html" class="product-title">
                        鲜花/心连心-红玫瑰19枝，龙柳心型小架构
                    </a>
                </div>
                <div class="price">
                    <span class="price-sign">&yen;</span>
                    <span class="price-num">239</span>
                </div>
            </div>
        </div>
        <div class="side-item">
            <div class="img-box">
                <a href="/product/9012290.html" target="_blank"><img src="../../assets/Picture/9012290.jpg_220x240.jpg" width="180" height="196" alt="好幸运"></a>
            </div>
            <div class="info-cont">
                <div class="title">
                    <a href="/product/9012290.html" class="product-title">
                        鲜花/好幸运-粉佳人玫瑰13枝，苏醒玫瑰16枝，粉色扶朗5枝，灯台9枝，尤加利叶
                    </a>
                </div>
                <div class="price">
                    <span class="price-sign">&yen;</span>
                    <span class="price-num">530</span>
                </div>
            </div>
        </div>
        <div class="side-item">
            <div class="img-box">
                <a href="/product/9012289.html" target="_blank"><img src="../../assets/Picture/9012289.jpg_220x240.jpg" width="180" height="196" alt="邂逅浪漫"></a>
            </div>
            <div class="info-cont">
                <div class="title">
                    <a href="/product/9012289.html" class="product-title">
                        鲜花/邂逅浪漫-红玫瑰29枝+红色蔷薇10枝，灯台9枝，尤加利叶
                    </a>
                </div>
                <div class="price">
                    <span class="price-sign">&yen;</span>
                    <span class="price-num">539</span>
                </div>
            </div>
        </div>
        <div class="side-item">
            <div class="img-box">
                <a href="/product/9010869.html" target="_blank"><img src="../../assets/Picture/9010869.jpg_220x240.jpg" width="180" height="196" alt="淳美之爱"></a>
            </div>
            <div class="info-cont">
                <div class="title">
                    <a href="/product/9010869.html" class="product-title">
                        鲜花/淳美之爱-戴安娜粉玫瑰33枝，白色相思梅5枝
                    </a>
                </div>
                <div class="price">
                    <span class="price-sign">&yen;</span>
                    <span class="price-num">306</span>
                </div>
            </div>
        </div>
        <div class="side-item">
            <div class="img-box">
                <a href="/product/9010011.html" target="_blank"><img src="../../assets/Picture/9010011.jpg_220x240.jpg" width="180" height="196" alt="一心一意"></a>
            </div>
            <div class="info-cont">
                <div class="title">
                    <a href="/product/9010011.html" class="product-title">
                        鲜花/一心一意-玫瑰11枝，粉色勿忘我0.3扎
                    </a>
                </div>
                <div class="price">
                    <span class="price-sign">&yen;</span>
                    <span class="price-num">139</span>
                </div>
            </div>
        </div>

                </div>
            </div>
            <!-- 热销推荐 End -->
            <!-- 最新鲜花订单评价 -->
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="panel-title">最新鲜花订单评价</h3>
                    </div>
                    <div class="panel-body">

                                <div class="side-com">
            <div class="img-box">
                <a href="/product/9012118.html" target="_blank">
                    <img src="../../assets/Picture/9012118.jpg_80x87.jpg">
                </a>
            </div>
            <div class="com-cont">
                <h5>会员号：dreambu*</h5>
                <p><a href="/productpj/9012118.html" target="_blank">很好，很好，谢谢</a></p>
            </div>
        </div>
        <div class="side-com">
            <div class="img-box">
                <a href="/product/9010731.html" target="_blank">
                    <img src="../../assets/Picture/9010731.jpg_80x87.jpg">
                </a>
            </div>
            <div class="com-cont">
                <h5>会员号：9998016*</h5>
                <p><a href="/productpj/9010731.html" target="_blank">很不错，速度很快，原物和照片一样。</a></p>
            </div>
        </div>
        <div class="side-com">
            <div class="img-box">
                <a href="/product/9010105.html" target="_blank">
                    <img src="../../assets/Picture/9010105.jpg_80x87.jpg">
                </a>
            </div>
            <div class="com-cont">
                <h5>会员号：2864400*</h5>
                <p><a href="/productpj/9010105.html" target="_blank">花很漂亮服务好</a></p>
            </div>
        </div>
        <div class="side-com">
            <div class="img-box">
                <a href="/product/9010011.html" target="_blank">
                    <img src="../../assets/Picture/9010011.jpg_80x87.jpg">
                </a>
            </div>
            <div class="com-cont">
                <h5>会员号：2864400*</h5>
                <p><a href="/productpj/9010011.html" target="_blank">花很漂亮服务好</a></p>
            </div>
        </div>
        <div class="side-com">
            <div class="img-box">
                <a href="/product/9012033.html" target="_blank">
                    <img src="../../assets/Picture/9012033.jpg_80x87.jpg">
                </a>
            </div>
            <div class="com-cont">
                <h5>会员号：2864400*</h5>
                <p><a href="/productpj/9012033.html" target="_blank">花很漂亮服务好</a></p>
            </div>
        </div>
        <div class="side-com">
            <div class="img-box">
                <a href="/product/9012204.html" target="_blank">
                    <img src="../../assets/Picture/9012204.jpg_80x87.jpg">
                </a>
            </div>
            <div class="com-cont">
                <h5>会员号：138192*</h5>
                <p><a href="/productpj/9012204.html" target="_blank">花花灰常漂亮，奶奶特别喜欢~</a></p>
            </div>
        </div>

                    </div>
                </div>
            <!-- 最新鲜花订单评价 End -->
        </div>
    </div>
    <!-- 鲜花常识&送花礼仪 -->
    
    <div class="panel panel-default knowledge">
        <div class="panel-heading">
            <h3 class="panel-title">爱情鲜花&amp;送花礼仪</h3>
        </div>
        <div class="panel-body">
            <ul>
                <li><a href="/huayu/11392.html" target="_blank">爱情鲜花：鲜花，守护在爱恋时光里</a></li>
                <li><a href="/huayu/10500.html" target="_blank">爱情“保鲜”战：结婚纪念日送花</a></li>
                <li><a href="/huayu/11395.html" target="_blank">这些花，比爱情更温暖</a></li>
                <li><a href="/huayu/12087.html" target="_blank">妻子生日送多少朵玫瑰最好？</a> </li>
                <li><a href="/huayu/11876.html" target="_blank">结婚后的情人节送什么？</a> </li>
            </ul>
            <ul>
                <li><a href="/huayu/12071.html" target="_blank">恋爱的那点事儿，怎样谈恋爱？</a> </li>
                <li><a href="/huayu/11441.html" target="_blank">老婆过生日送什么花？</a> </li>
                <li><a href="/huayu/11685.html" target="_blank">向女朋友求婚送什么花？</a></li>
                <li><a href="/huayu/12023.html" target="_blank">惹女友生气了怎么办？</a> </li>
                <li><a href="/huayu/11883.html" target="_blank">送花的含义：相爱纪念日送什么花？</a> </li>
            </ul>
            <ul>
                <li><a href="/huayu/11370.html" target="_blank">解读爱情：十二星座之守护花</a> </li>
                <li><a href="/huayu/20051116174222.htm" target="_blank">经典送花祝福语</a> </li>
                <li><a href="/huayu/20051115103610.htm" target="_blank">送花支数代表的含义</a> </li>
                <li><a href="/huayu/20050611131024.htm" target="_blank"> 鲜花与生日</a></li>
                <li><a href="/huayu/20050611130659.htm" target="_blank"> 鲜花与星座</a> </li>
            </ul>
        </div>
    </div>


    <!-- 鲜花常识&送花礼仪 End -->
</div>
<!-- 内容 End -->

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
                <script src="../../assets/Scripts/seallogo.js"></script>
            </span> -->
            <a href="https://ss.knet.cn/verifyseal.dll?sn=e15041744030058395oqbo000000&ct=df&a=1&pa=0.8817607406526804" target="_blank"><img style="height:40px;" src="../../assets/Picture/cxwz.png"></a>
            <a href="https://search.szfw.org/cert/l/CX20130306002238002312" target="_blank"><img src="../../assets/Picture/cxwz.gif" height="40" width="112"></a>
            <a href="http://www.anquan.org/authenticate/cert/?site=www.hua.com&at=realname" rel="nofollow" target="_blank"><img src="../../assets/Picture/smyz.gif" height="40" width="106"></a>
<img src="../../assets/Picture/slogan.png" height="50" width="212" />            <a href="/member/payment/fillbyalipay?order_no=&total_fee=" rel="nofollow" target="_blank"><img src="../../assets/Picture/zfb.gif" height="49" width="96"></a>
            <a href="/profile/news_20111110.htm" target="_blank"><img src="../../assets/Picture/100.jpg" height="49" width="150"></a>
            <a href="/profile/ICP.htm" rel="nofollow" target="_blank"><img src="../../assets/Picture/bico1.jpg" alt="ICP" height="46" width="35"></a>
            <!--             <a href="http://www.sznet110.gov.cn/webrecord/innernet/Welcome.jsp?bano=4403301920636" rel="nofollow" target="_blank"><img alt="网警" src="../../assets/Picture/bico2.jpg" height="46" width="35"></a> -->
            <a href="http://szcert.ebs.org.cn/fab6de6a-ff80-4e63-89e4-cd531170c256" rel="nofollow" target="_blank"><img alt="工商网监" src="../../assets/Picture/bico4.jpg" height="46" width="35"></a>
            <a href="http://www.sznet110.gov.cn/netalarm/index.jsp" rel="nofollow" target="_blank"><img src="../../assets/Picture/bico3.jpg" alt="网安" height="46" width="35"></a>
        </div>
        <p><a href="/profile/ChinaFlowerAssociation.htm" rel="nofollow" target="_blank" title="中国花卉协会会员">中国花卉协会会员</a> <a href="/profile/chinaECA.htm" rel="nofollow" target="_blank">中国电子商务协会会员</a> ICP经营许可证：<a href="/profile/ICP.htm" rel="nofollow" target="_blank">粤B2-20050744</a> <b>|</b> <a href="http://www.miibeian.gov.cn" rel="nofollow" target="_blank">粤ICP备09171662号</a> <span class="ico beian"></span>粤公网安备44030502000373号 Copyright © 2005-2018</p>
        <p>花礼网 （中国鲜花礼品网） <a href="/">www.hua.com</a><span> 深圳市百易信息技术有限公司</span> 中国领先鲜花网品牌,爱情鲜花速递服务！</p>
    </footer>
    <!-- 通用尾部 End -->
    <!-- 弹出窗口-->
    
    
    <div class="modal fade com-modal" id="loginModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="attNotice">收藏商品</h4>
                </div>
                <div class="modal-body">
                    <iframe src="" width="100%" frameborder="0" id="attPage"></iframe>
                </div>
            </div>
        </div>
    </div>


    <!-- 弹出窗口end-->
            <div class="mui-mbar-tabs">
            <div class="quick_link_mian">
                <div class="quick_links_panel">
                    <div id="quick_links" class="quick_links">
                        <li>
                            <a href="#none" class="my_qlinks"><i class="ico_user"></i></a>
                            <!-- ***** 未登录 ***** -->
                            <div class="ibar_login_box">
                                <div class="avatar_box" id="loginStats"></div>
                                <div class="login_btnbox">
                                    <a href="/Member/Order/"><i class="ico_order"></i>我的订单</a>
                                </div>
                                <i class="icon_arrow_right_white"></i>
                            </div>
                        </li>
                        <li id="shopCart">
                            <a href="javascript:void(0)" class="message_list"><i class="ico_cart"></i><div class="span">购物车</div><span class="cart_num" id="cart_num">0</span></a>
                        </li>
                        <li>
                            <a href="javascript:void(0)" class="history_list"><i class="ico_collect"></i></a>
                            <div class="mp_tooltip">
                                <a href="javascript:void(0)" class="history_list" style="color: #595656;font-size: 14px;width: 100%;background: #fff;border-radius: 3px 0 0 3px;">我的收藏</a>
                                <i class="icon_arrow_right_white"></i>
                            </div>
                        </li>
                        <li>
                            <a href="javascript:void(0)" class="mpbtn_histroy"><i class="ico_histroy"></i></a>
                            <div class="mp_tooltip">
                                <a href="javascript:void(0)" class="mpbtn_histroy" style="color: #595656;font-size: 14px;width: 100%;background: #fff;border-radius: 3px 0 0 3px;">最近查看</a>
                                <i class="icon_arrow_right_white"></i>
                            </div>
                        </li>
                        <li>
                            <a href="javascript:void(0)" class="leave_message"><i class="ico_phone"></i></a>
                            <div class="mp_tooltip">400-889-8188<i class="icon_arrow_right_white"></i></div>
                        </li>
                        <li>
                            <a id="kefu"  class="mpbtn_recharge"><i class="ico_headset"></i></a>
                            <div class="mp_tooltip">
                                <a id="kefu1" class="mpbtn_recharge" style="color: #595656;font-size: 14px;width: 100%;background: #fff;border-radius: 3px 0 0 3px;" title="在线客服">
                                    在线客服
                                </a>
                                <i class="icon_arrow_right_white"></i>
                            </div>
                        </li>
                    </div>
                    <div class="quick_toggle">
                        <li>
                            <a href="javascript:void(0)"><i class="ico_qrcode"></i></a>
                            <div class="mp_qrcode">
                                <p>
                                    <img src="../../assets/Picture/qr_wx.jpg" width="110" height="110">
                                    关注微信公众号
                                </p>
                                <p>
                                    <img src="../../assets/Picture/qr_app.jpg" width="110" height="110">
                                    下载花礼APP
                                </p>
                                <i class="icon_arrow_right_white"></i>
                            </div>
                        </li>
                        <li>
                            <a href="/Chat/FeedBack" class="mpbtn_recharge" target="_blank"><i class="ico_surveys"></i></a>
                            <div class="mp_tooltip"><a href="/Chat/FeedBack" class="mpbtn_recharge"  style="color: #595656;font-size: 14px;width: 100%;background: #fff;border-radius: 3px 0 0 3px;" target="_blank">功能反馈</a><i class="icon_arrow_right_white"></i></div>
                        </li>
                        <li style="height:36px;margin-top:0px;">
                            <a href="#top" class="return_top"><i class="ico_gotop"></i></a>
                            <div class="mp_tooltip">
                                <a href="#top" class="return_top" style="color: #595656;font-size: 14px;width: 100%;background: #fff;border-radius: 3px 0 0 3px;">返回顶部</a>
                                <i class="icon_arrow_right_white"></i>
                            </div>
                        </li>
                    </div>
                </div>
                <div id="quick_links_pop" class="quick_links_pop hide"></div>
            </div>
        </div>

        <script type="text/javascript" src="../../assets/Scripts/common.js"></script>
    
    
    
    <script>
        //关注js
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
            $("#attPage").attr('src', '/shopping/winguanzhu?pp=' + pp)
        }
        //关注end
    </script>


        <script type="text/javascript" src="../../assets/Scripts/statesandright.js"></script>
    <script src="../../assets/Scripts/layer.js"></script>
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