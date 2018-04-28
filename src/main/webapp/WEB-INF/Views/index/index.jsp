<%@ page language="java" pageEncoding="utf-8" contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>鲜花网|中国鲜花礼品网-中国鲜花网,鲜花速递网站,网上订花送花上门,鲜花快递网上花店</title>
    <meta name="description" content="鲜花网,选中国鲜花礼品网(花礼网)-中国鲜花网领先品牌,Hua.com专注鲜花速递服务13年,销量居鲜花礼品网站首位！鲜花网可24小时预订鲜花，同城送花、异地送花服务,网上订花后最快3小时即可将鲜花快递上门,送花网站覆盖中国2000+城市！" />
    <meta name="keywords" content="中国鲜花礼品网,鲜花,鲜花网,鲜花快递,网上订花送花,中国鲜花网,鲜花礼品,网上订花,送花网站" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit|ie-comp">
    <meta name="mobile-agent" content="format=html5; url=https://m.hua.com/">
    <style type="text/css">
    	.nav .tag{
    	    position: relative;
    	    color: #fe6600 !important;
    	}
    	.nav .tag:before{
    	    content: "";
    	    position: absolute;
	        top: 13px;
            right: -4px;
    	    width: 26px;
    	    height: 14px;
    	    background-repeat: no-repeat;
    	    background-position: center;
    	    -webkit-background-size: contain;
    	    background-size: contain;
    	    background-image: url(../assets/Images/tag-new02.png);
    	    animation: doudong 0.5s linear infinite;
    	}
    	@-webkit-keyframes doudong{
    	    0%{
    	        top:13px
    	    }
    	    50%{
    	        top: 11px;
    	    }
    	    100%{
    	        top: 13px;
    	    }
    	}
    	@keyframes doudong{
    	    0%{
                top:13px
            }
            50%{
                top: 11px;
            }
            100%{
                top: 13px;
            }
    	}
    </style>
    <script type="text/javascript" src="../assets/Scripts/a7b6e458928c4ba4bd7becd1307da78f.js"></script>
    <link rel="icon" href="/favicon.ico" mce_href="/favicon.ico" type="image/x-icon">
    <link type="text/css" rel="stylesheet" href="../assets/Css/common.css">
    <link type="text/css" rel="stylesheet" href="../assets/Css/public.css">
    <link type="text/css" rel="stylesheet" href="../assets/Css/mbar.css" />
    <style>
        body {
            min-width: 1200px;
        }

        .categorys .dropdown-cate {
            height: 440px;
        }

        .beian {
            width: 16px;
            height: 16px;
            background: url(../assets/Images/beian.png) no-repeat;
            background-size: 16px;
            margin: -3px 2px 0;
        }
    </style>
    <style>
        .app-wx-wrapper .app-download {
            width: 334px;
            text-align: left;
            padding-left: 0;
        }

            .app-wx-wrapper .app-download img {
                margin-left: 13px;
                margin-right: 19px;
            }

        .app-wx-wrapper .cartoon {
            width: 466px;
        }

        .app-wx-wrapper .weixin {
            width: 390px;
        }

        .app-wx-wrapper .cartoon img {
            margin: 13px auto;
        }

        .app-wx-wrapper .weixin img {
            margin-right: 20px;
            margin-left: 18px;
        }

        .app-wx-wrapper .app-download, .app-wx-wrapper .weixin {
            padding: 25px 0px 20px 20px;
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
    
    <!--//img02.hua.com/banner/17_yongganai_banner_top.jpg-->
    <a href="/yongganai" target="_blank"><div style="background:url(../assets/Images/17_yongganai_banner_top.jpg) 50% 0 no-repeat;height:80px;"></div></a>
    

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
                    <a href="login?identity=customer" rel="nofollow" id="btn-login">你好，请登录</a><a href="register?identity=customer" rel="nofollow" id="btn-reg">注册</a>
                </li>
                <!--登陆状态信息显示end-->
                <li class="site-nav-pipe">|</li>
                <li class="menu">
                    <a href="/help/ordercx/" rel="nofollow" target="_blank">订单查询</a>
                </li>
                <li class="site-nav-pipe">|</li>
                <!--我的花礼信息显示start-->
                <li class="menu dropdown">
                    <a href="login?identity=seller" rel="nofollow" data-hover="dropdown" data-delay="0" target="_blank">商家登录</a>
                </li><!--我的花礼信息显示end-->
                <li class="site-nav-pipe">|</li>
                <li class="menu dropdown">
                    <a href="register?identity=seller" rel="nofollow" data-hover="dropdown" data-delay="0" target="_blank">商家入驻</a>
                </li><!--我的花礼信息显示end-->
                <li class="site-nav-pipe">|</li>
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
            
    <span class="help-block">
        <a href="/hongmeigui/" target="_blank">红玫瑰</a> | <a href="/yongshenghua/" target="_blank">永生花</a> | <a href="/shengriliwu/" target="_blank">生日鲜花</a> | <a href="/qiyetuangou/gift_card.html" target="_blank">礼品卡</a>
    </span>

        </div>
        <div class="service">
            <span class="ico ico-phone"></span>400-889-8188
            <a href="/chat/" target="_blank"><span class="ico ico-headset"></span>在线客服</a>
        </div>
    </header>
    <!-- 头部 End -->
    

<!-- 导航 -->
<nav class="default">
    <div class="container">
        <div class="categorys">
            <h3 class="categorys-title">
                <a href="/all.html" target="_blank">全部商品导购</a>
            </h3>
            <div class="dropdown-cate">
                <h4>鲜花用途</h4>
                <ul class="cate-list list-inline">
                    <li><a href="/aiqingxianhua/" target="_blank">爱情鲜花</a></li>
                    <li><a href="/shengriliwu/" target="_blank">生日鲜花</a></li>
                    <li><a href="/youqingxianhua/" target="_blank">友情鲜花</a></li>
                    <li><a href="/songzhangbeixianhua/" target="_blank">问候长辈</a></li>
                    <li><a href="/tanbingweiwenxianhua/" target="_blank">探病慰问</a></li>
                    <li><a href="/daoqianxianhua/" target="_blank">道歉鲜花</a></li>
                    <li><a href="/zhufuqinghexianhua/" target="_blank">祝贺鲜花</a></li>
                    <li><a href="/hunqingxianhua/" target="_blank">婚庆鲜花</a></li>
                    <li><a href="/businessFlower/" target="_blank">商务鲜花</a></li>
                </ul>
                <h4>鲜花花材</h4>
                <ul class="cate-list list-inline">
                    <li><a href="/meigui/" target="_blank">玫瑰</a></li>
                    <li><a href="/kangnaixin/" target="_blank">康乃馨</a></li>
                    <li><a href="/yujinxiang/" target="_blank">郁金香</a></li>
                    <li><a href="/baihe/" target="_blank">百合</a></li>
                    <li><a href="/fulang/" target="_blank">扶郎</a></li>
                    <li><a href="/matilian/" target="_blank">马蹄莲</a></li>
                    <li><a href="/xiangrikui/" target="_blank">向日葵</a></li>
                </ul>
                <h4>鲜花类别</h4>
                <ul class="cate-list list-inline">
                    <li><a href="/huashu/" target="_blank">花束</a></li>
                    <li><a href="/hezhuanghua/" target="_blank">花盒</a></li>
                    <li><a href="/pingchahua/" target="_blank">瓶花</a></li>
                    <li><a href="/flower/JingPinXianHua/" target="_blank">精品鲜花</a></li>
                    <li><a href="/giftsBasket/" target="_blank">果篮</a></li>
                    <li><a href="/hualan/" target="_blank">桌面花篮</a></li>
                    <li><a href="/businessFlower/kaiyehualan/" target="_blank">开业花篮</a></li>
                </ul>
                <div class="cate-cake stature cate-ysh">
                    <a href="/yongshenghua/" target="_blank"><span class="pull-right glyphicon glyphicon-menu-right"></span>永生花</a>
                    <div class="right-menu">
                        <b></b>
                        <h5>永生花类别</h5>
                        <div class="link-img">
                            <a href="/yongshenghua/yongshenghua_box.html" target="_blank">
                                <img src="../assets/Picture/ysh_brand_menu_01.jpg" height="62" width="96">经典花盒
                            </a>
                            <a href="/yongshenghua/yongshenghua_large.html" target="_blank">
                                <img src="../assets/Picture/ysh_brand_menu_02.jpg" height="62" width="96">巨型玫瑰
                            </a>
                            <a href="/yongshenghua/yongshenghua_lavender.html" target="_blank">
                                <img src="../assets/Picture/ysh_brand_menu_03.jpg" height="62" width="96">薰衣草
                            </a>
                            <a href="/yongshenghua/yongshenghua_vase.html" target="_blank">
                                <img src="../assets/Picture/ysh_brand_menu_04.jpg" height="62" width="96">永生瓶花
                            </a>
                            <a href="/yongshenghua/yongshenghua_characteristic.html" target="_blank">
                                <img src="../assets/Picture/ysh_brand_menu_05.jpg" height="62" width="96">特色永生花
                            </a>
                        </div>
                    </div>
                    <ul class="cate-list list-inline">
                        <li><a href="/yongshenghua/yongshenghua_box.html" target="_blank">经典花盒</a></li>
                        <li><a href="/yongshenghua/yongshenghua_large.html" target="_blank">巨型玫瑰</a></li>
                        <li><a href="/yongshenghua/yongshenghua_lavender.html" target="_blank">薰衣草</a></li>
                    </ul>
                </div>
               <div class="cate-cake stature">
                    <a href="/cake/" target="_blank"><span class="pull-right glyphicon glyphicon-menu-right"></span>蛋糕</a>
                    <div class="right-menu">
                        <b></b>
                        <h5>蛋糕品牌</h5>
                        <div class="link-img">
                            <a href="/cake/ganso/" target="_blank">
                                <img src="../assets/Picture/cake_brand_menu_01.jpg" height="62" width="96">元祖
                            </a>
                            <a href="/cake/21cake/" target="_blank">
                                <img src="../assets/Picture/cake_brand_21cake.png" height="62" width="96">廿一客蛋糕
                            </a>
                            <a href="/cake/incake/" target="_blank">
                                <img src="../assets/Picture/cake_brand_s_16.png" height="62" width="96">INCAKE
                            </a>
                            <a href="/cake/xfxb/" target="_blank">
                                <img src="../assets/Picture/cake_brand_menu_07.jpg" height="62" width="96">幸福西饼
                            </a>
                            <a href="/cake/lecake/" target="_blank">
                                <img src="../assets/Picture/cake_brand_menu_08.jpg" height="62" width="96">诺心蛋糕
                            </a>
                            <a href="/cake/waffleboy/" target="_blank">
                                <img src="../assets/Picture/cake_brand_menu_04.jpg" height="62" width="96">窝夫小子
                            </a>
                            <a href="/cake/mcake/" target="_blank">
                                <img src="../assets/Picture/cake_brand_menu_09.jpg" height="62" width="96">Mcake蛋糕
                            </a>
                            <a href="/cake/micamika/" target="_blank">
                                <img src="../assets/Picture/cake_brand_menu_05.jpg" height="62" width="96">米卡米卡
                            </a>
                            <a href="/cake/vcake/" target="_blank">
                                <img src="../assets/Picture/cake_brand_menu_10.jpg" height="62" width="96">Vcake蛋糕
                            </a>
                            <a href="/cake/yipinxuan/" target="_blank">
                                <img src="../assets/Picture/cake_brand_menu_06.jpg" height="62" width="96">一品轩
                            </a>
                            <a href="/cake/beisike/" target="_blank">
                                <img src="../assets/Picture/brandcake_beisike.png" height="62" width="96">贝思客
                            </a>
                            <a href="/cake/boncake/" target="_blank">
                                <img src="../assets/Picture/boncake.png" height="62" width="96">BONCAKE
                            </a>
                            <a href="/cake/faxini/" target="_blank">
                                <img src="../assets/Picture/cake_brand_s_fxn.png" height="62" width="96">法西妮蛋糕
                            </a>
                            <a href="/cake/heartcheesecake/" target="_blank">
                                <img src="../assets/Picture/cake_brand_s_xinzhihe.png" height="62" width="96">心之和蛋糕
                            </a>
                            <a href="/cake/allcitycake/" class="national" target="_blank">
                                全国蛋糕
                            </a>
                        </div>
                        <h5>蛋糕城市</h5>
                        <div class="link-text">
                            <a href="/cake/city/beijingdangao.html" target="_blank">北京</a>
                            <a href="/cake/city/shanghaidangao.html" target="_blank">上海</a>
                            <a href="/cake/city/guangzhoudangao.html" target="_blank">广州</a>
                            <a href="/cake/city/shenzhendangao.html" target="_blank">深圳</a>
                            <a href="/cake/city/tianjindangao.html" target="_blank">天津</a>
                            <a href="/cake/city/chengdudangao.html" target="_blank">成都</a>
                            <a href="/cake/city/chongqingdangao.html" target="_blank">重庆</a>
                            <a href="/cake/city/xiandangao.html" target="_blank">西安</a>
                            <a href="/cake/city/suzhoudangao.html" target="_blank">苏州</a>
                            <a href="/cake/city/hangzhoudangao.html" target="_blank">杭州</a>
                            <a href="/cake/city/nanjingdangao.html" target="_blank">南京</a>
                            <a href="/cake/city/?city=合肥" target="_blank">合肥</a>
                            <a href="/cake/city/wuhandangao.html" target="_blank">武汉</a>
                            <a href="/cake/city/?city=郑州" target="_blank">郑州</a>
                            <a href="/cake/city/?city=长沙" target="_blank">长沙</a>
                            <a href="/cake/city/?city=南昌" target="_blank">南昌</a>
                            <a href="/cake/city/haerbindangao.html" target="_blank">哈尔滨</a>
                            <a href="/cake/city/shenyangdangao.html" target="_blank">沈阳</a>
                            <a href="/cake/city/changchundangao.html" target="_blank">长春</a>
                            <a href="/cake/city/daliandangao.html" target="_blank">大连</a>
                            <a href="/cake/city/?city=青岛" target="_blank">青岛</a>
                            <a href="/cake/city/?city=济南" target="_blank">济南</a>
                            <a href="/cake/city/?city=福州" target="_blank">福州</a>
                            <a href="/cake/city/?city=厦门" target="_blank">厦门</a>
                            <a href="/cake/city/?city=昆明" target="_blank">昆明</a>
                            <a href="/cake/city/?city=贵阳" target="_blank">贵阳</a>
                            <a href="/cake/city/?city=南宁" target="_blank">南宁</a>
                            <a href="/cake/city/shijiazhuangdangao.html" target="_blank">石家庄</a>
                            <a href="/cake/city/?city=海口" target="_blank">海口</a>
                            <a href="/cake/city/taiyuandangao.html" target="_blank">太原</a>
                            <a href="/cake/city/?city=兰州" target="_blank">兰州</a>
                            <a href="/cake/city/?city=乌鲁木齐" target="_blank">乌鲁木齐</a>
                            <a href="/cake/city/tangshandangao.html" target="_blank">唐山</a>
                            <a href="/cake/city/huhehaotedangao.html" target="_blank">呼和浩特</a>
                            <a href="/cake/city/?city=东莞" target="_blank">东莞</a>
                            <a href="/cake/city/?city=佛山" target="_blank">佛山</a>
                            <a href="/cake/city/?city=宁波" target="_blank">宁波</a>
                            <a href="/cake/city/?city=无锡" target="_blank">无锡</a>
                            <a href="/cake/city/?city=温州" target="_blank">温州</a>
                            <a href="/cake/city/?city=常州" target="_blank">常州</a>
                            <a href="/cake/" target="_blank">更多&gt;&gt;</a>
                        </div>
                    </div>
                    <ul class="cate-list list-inline">
                        <li><a href="/cake/ganso/" target="_blank">元祖</a></li>
                        <li><a href="/cake/" target="_blank">更多</a></li>
                    </ul>
                </div>
                <div class="cate-cake">
                    <div class="gifts_toys_plant">
                        <span class="pull-right glyphicon glyphicon-menu-right"></span>
                        <a href="/gifts/" target="_blank" style="padding-left:12px;">礼品</a> /
                        <a href="/toys/" target="_blank">公仔</a> /
                        <a href="/Plant/" target="_blank">绿植</a>
                    </div>
                    <div class="right-menu">
                        <b></b>
                        <h5>礼品类别</h5>
                        <div class="link-img">
                            <a href="/livingflower/" target="_blank">
                                <img src="../assets/Picture/cake_sort_menu_01.jpg" height="62" width="58">保鲜花
                            </a>
                            <a href="/gifts/goldenflower/" target="_blank">
                                <img src="../assets/Picture/cake_sort_menu_02.jpg" height="62" width="58">金箔花
                            </a>
                            <a href="/gifts/musicbox/" target="_blank">
                                <img src="../assets/Picture/cake_sort_menu_03.jpg" height="62" width="58">音乐盒
                            </a>
                            <a href="/gifts/crystallaser/" target="_blank">
                                <img src="../assets/Picture/cake_sort_menu_4.jpg" height="62" width="58">水晶内雕
                            </a>
                            <a href="/gifts/cosmeticmirror/" target="_blank">
                                <img src="../assets/Picture/cake_sort_menu_05.jpg" height="62" width="58">化妆镜
                            </a>
                            <a href="/gifts/bestlife/" target="_blank">
                                <img src="../assets/Picture/cake_sort_menu_04.jpg" height="62" width="58">音乐睡枕
                            </a>
                            <a href="/gifts/kingking/" target="_blank">
                                <img src="../assets/Picture/cake_sort_menu_06.jpg" height="62" width="58">香薰系列
                            </a>
                            <a href="/gifts/vase/" target="_blank">
                                <img src="../assets/Picture/cake_sort_menu_9.jpg" height="62" width="58">花瓶/相框
                            </a>
                            <a href="/gifts/chocolates/" target="_blank">
                                <img src="../assets/Picture/cake_sort_menu_10.jpg" height="62" width="58">巧克力
                            </a>
                            <a href="/gifts/shoushi/" target="_blank">
                                <img src="../assets/Picture/cake_sort_menu_12.jpg" height="62" width="58">首饰
                            </a>
                            <a href="/gifts/dengshi/" target="_blank">
                                <img src="../assets/Picture/cake_sort_menu_13.jpg" height="62" width="58">创意礼品
                            </a>
                            <a href="/qiyetuangou/gift_card.html" target="_blank">
                                <img src="../assets/Picture/card.jpg" height="62" width="58">礼品卡
                            </a>
                        </div>
                        <h5><a href="/toys/" target="_blank">品牌公仔</a></h5>
                        <div class="link-text">
                            <a href="/HelloKitty/" target="_blank">Hello Kitty公仔</a>
                            <a href="/doge/" target="_blank">doge神烦狗</a>
                            <a href="/katonghuashu/" target="_blank">卡通花束(公仔花束)</a>
                        </div>
                        <h5><a href="/Plant/" target="_blank">绿植花卉</a></h5>
                        <div class="link-text">
                            <a href="/Plant/greenplant/" target="_blank">绿色植物</a>
                            <a href="/Plant/potflower/" target="_blank">盆栽花卉</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <ul class="nav">
            <li><a href="/flower/" target="_blank">鲜花</a></li>
            <li><a href="/yongshenghua/" target="_blank">永生花</a></li>
            <li><a href="/cake/" target="_blank">蛋糕</a></li>
            <li><a href="/gifts/" target="_blank">礼品</a></li>
            <li><a href="/gifts/chocolates/" target="_blank">巧克力</a></li>
            <li><a href="/huayu/" target="_blank">花语大全</a></li>
            <li><a href="/qiyetuangou/" target="_blank">企业团购</a></li>
            <li><a href="/you/" target="_blank" class="tag tag-new">设计师臻选鲜花</a></li>
            <li><a href="/theme/mothersday/" target="_blank" style="color: #ff6600;">母亲节鲜花</a></li>
        </ul>
    </div>
</nav>
<!-- 导航 End -->
<!-- 大图轮翻 -->
<!-- 大图轮翻 -->
<div id="fullCarousel" class="carousel slide carousel-fade">
    <ol class="carousel-indicators">
        <li data-target="#fullCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#fullCarousel" data-slide-to="1"></li>
        <li data-target="#fullCarousel" data-slide-to="2"></li>
        <li data-target="#fullCarousel" data-slide-to="3"></li>
        <!--<li data-target="#fullCarousel" data-slide-to="4"></li>-->
    </ol>
    <div class="carousel-inner">
        <div class="item active">
            <div class="fill" style="background-image:url('../assets/Images/18_mothersday_pc.jpg');"><a href="/theme/mothersday/" target="_blank"></a></div>
        </div>
        <div class="item">
            <div class="fill" style="background-image:url('../assets/Images/18_jinniu_pc.jpg');"><a href="/theme/jinniuzuo/" target="_blank"></a></div>
        </div>
        <div class="item">
            <div class="fill" style="background-image:url('../assets/Images/18_youflower_pc.jpg');"><a href="/you/" target="_blank"></a></div>
        </div>
        <div class="item">
            <div class="fill" style="background-image:url('../assets/Images/longtou.jpg');"><a href="/profile/17656.html" target="_blank"></a></div>
        </div>
    </div>
    <div class="control-wrapper">
        <a class="left carousel-control" href="#fullCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right carousel-control" href="#fullCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>
    <div class="focus-wrapper">
        <div class="bd">
            <a href="/product/9012072.html" target="_blank"><img src="../assets/Picture/rightbox_1_180408.jpg" height="140" width="210"></a>
            <a href="/product/9012060.html" target="_blank"><img src="../assets/Picture/rightbox_2_180408.jpg" height="140" width="210"></a>
            <a class="last-child" href="/product/9012150.html" target="_blank"><img src="../assets/Picture/rightbox_3_180224.jpg" height="140" width="210"></a>
        </div>
    </div>
</div>
<!-- 大图轮翻 End -->
<!-- 大图轮翻 End -->
<!-- 内容 -->
<div class="container">
    <!-- 服务 -->
    <div class="toper-server">
        <ul>
            <li>
                <a href="/profile/why_choose_us.htm" target="_blank">
                    <span class="ico ico-server-o1"></span>
                    <h4>鲜花电商龙头</h4>
                    <p>销量领先，权威认证龙头企业</p>
                </a>
            </li>
            <li>
                <a href="/productpj/" target="_blank">
                    <span class="ico ico-server-o2"></span>
                    <h4>13年品牌 真实口碑</h4>
                    <p>最近评价<font id="pjCount"></font>条</p>
                </a>
            </li>
            <li>
                <a href="/XianHuaShiPai/" target="_blank">
                    <span class="ico ico-server-o3"></span>
                    <h4>鲜花实拍秀展示</h4>
                    <p>敢展现送前实拍的鲜花网</p>
                </a>
            </li>
            <li>
                <a href="/help/send_bytime.htm" target="_blank">
                    <span class="ico ico-server-o4"></span>
                    <h4>3小时送花</h4>
                    <p>全国连锁，3小时送2000城市</p>
                </a>
            </li>
            <li class="last-child">
                <a href="/help/afterservice.htm" target="_blank">
                    <span class="ico ico-server-o5"></span>
                    <h4>200%退赔承诺</h4>
                    <p>可靠的售后保障</p>
                </a>
            </li>
        </ul>
    </div>
    <!-- 服务 End -->
    <!-- 限时推荐 -->
    <div class="time-limit">
        <div class="title">
            <span class="ico ico-clock "></span>
            限时推荐
        </div>
        <ul class="product-list">
            <li><a href="/product/9012089.html" target="_blank"><img src="../assets/Picture/xianshi_1_180410.jpg" alt="" width="238" height="198"></a></li>
            <li><a href="/product/9012112.html" target="_blank"><img src="../assets/Picture/xianshi_2_180316.jpg" alt="" width="238" height="198"></a></li>
            <li><a href="/product/1073165.html" target="_blank"><img src="../assets/Picture/xianshi_3_180302.jpg" alt="" width="238" height="198"></a></li>
        </ul>
        <div class="comic-choose">
            
            <a href="/you/" target="_blank"><img src="../assets/Picture/18_youflower_pcsmall.jpg" height="200" width="250" alt=""></a>
        </div>
    </div>
    <!-- 限时推荐 End -->
    <!-- 楼层01 -->
    <div class="floor f1">
        <div class="hd">
            <a class="more" href="/aiqingxianhua/" target="_blank">更多爱情鲜花 &gt;&gt;</a>
            <h3><a href="/aiqingxianhua/" target="_blank">爱情鲜花</a><span>送·让你怦然心动的人</span></h3>
        </div>
        <div class="bd">
            <div class="bd-l">
                <div class="banner-box">
                    <a href="/aiqingxianhua/" target="_blank"><img data-original="//img02.hua.com/pc/pimg/banner_love.jpg" height="438" width="243"></a>
                </div>
                <a class="banner-link" href="/aiqingxianhua/" target="_blank">爱情鲜花专区 &gt;&gt;</a>
            </div>
            <ul class="floor-products">

                    <li>
        <a href="/product/9010966.html" target="_blank">
            <span class="img-box" href="/product/9010966.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/9010966.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">鲜花 · 一往情深</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">245</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/9010011.html" target="_blank">
            <span class="img-box" href="/product/9010011.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/9010011.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">鲜花 · 一心一意</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">139</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/9012154.html" target="_blank">
            <span class="img-box" href="/product/9012154.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/9012154.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">鲜花 · 甜美公主</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">378</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/9012009.html" target="_blank">
            <span class="img-box" href="/product/9012009.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/9012009.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">鲜花 · 忘情巴黎</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">298</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/9012223.html" target="_blank">
            <span class="img-box" href="/product/9012223.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/9012223.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">鲜花 · 我只钟情你</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">239</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/9010877.html" target="_blank">
            <span class="img-box" href="/product/9010877.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/9010877.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">鲜花 · 致美丽的你</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">149</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/9012055.html" target="_blank">
            <span class="img-box" href="/product/9012055.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/9012055.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">鲜花 · 不变的心</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">469</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/9012177.html" target="_blank">
            <span class="img-box" href="/product/9012177.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/9012177.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">鲜花 · 不变的承诺</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">569</span>
            </p>
        </a>
    </li>

            </ul>
        </div>
    </div>
    <!-- 楼层01 End -->
    <!-- 楼层02 -->
    <div class="floor f2">
        <div class="hd">
            <a class="more" href="/songzhangbeixianhua/" target="_blank">更多送长辈鲜花 &gt;&gt;</a>
            <h3><a href="/songzhangbeixianhua/" target="_blank">送长辈鲜花</a><span>赠·父母/恩师/长辈</span></h3>
        </div>
        <div class="bd">
            <div class="bd-l">
                <div class="banner-box">
                    <a href="/songzhangbeixianhua/" target="_blank"><img data-original="//img02.hua.com/pc/pimg/banner_elder.jpg" height="438" width="243"></a>
                </div>
                <a class="banner-link" href="/songzhangbeixianhua/" target="_blank">送长辈鲜花专区 &gt;&gt;</a>
            </div>
            <ul class="floor-products">

                    <li>
        <a href="/product/9012092.html" target="_blank">
            <span class="img-box" href="/product/9012092.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/9012092.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">鲜花 · 母爱</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">178</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/9012316.html" target="_blank">
            <span class="img-box" href="/product/9012316.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/9012316.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">鲜花 · 「熊抱花束」聆听你</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">519</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/9012201.html" target="_blank">
            <span class="img-box" href="/product/9012201.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/9012201.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">鲜花 · 馨情无限</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">246</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/9012095.html" target="_blank">
            <span class="img-box" href="/product/9012095.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/9012095.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">鲜花 · 幸福绽放</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">168</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/9010736.html" target="_blank">
            <span class="img-box" href="/product/9010736.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/9010736.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">鲜花 · 感激</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">208</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/9012200.html" target="_blank">
            <span class="img-box" href="/product/9012200.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/9012200.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">鲜花 · 暖暖的问候</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">259</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/9010964.html" target="_blank">
            <span class="img-box" href="/product/9010964.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/9010964.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">鲜花 · 天使之祈</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">205</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/9010842.html" target="_blank">
            <span class="img-box" href="/product/9010842.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/9010842.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">鲜花 · 感恩密码</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">168</span>
            </p>
        </a>
    </li>

            </ul>
        </div>
    </div>
    <!-- 楼层02 End -->
    <!-- 楼层03 -->
    <div class="floor f3">
        <div class="hd">
            <a class="more" href="/yongshenghua/" target="_blank">更多永生花 &gt;&gt;</a>
            <h3><a href="/yongshenghua/" target="_blank">永生花</a><span>许·她一生承诺</span></h3>
        </div>
        <div class="bd">
            <div class="bd-l">
                <div class="banner-box">
                    <a href="/product/1073017.html" target="_blank"><img data-original="//img02.hua.com/pc/pimg/banner_song.jpg" height="438" width="243"></a>
                </div>
                <a class="banner-link" href="/yongshenghua/" target="_blank">永生花专区 &gt;&gt;</a>
            </div>
            <ul class="floor-products">

                    <li>
        <a href="/product/1073017.html" target="_blank">
            <span class="img-box" href="/product/1073017.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/1073017.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">永生花 · 一生的承诺</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">298</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/1070064.html" target="_blank">
            <span class="img-box" href="/product/1070064.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/1070064.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">永生花 · 天使之恋化妆镜永生花礼盒</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">368</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/1073038.html" target="_blank">
            <span class="img-box" href="/product/1073038.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/1073038.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">永生花 · 想念的季节</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">198</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/1073033.html" target="_blank">
            <span class="img-box" href="/product/1073033.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/1073033.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">永生花 · 一生一世</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">198</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/1073155.html" target="_blank">
            <span class="img-box" href="/product/1073155.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/1073155.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">永生花 · Be My Love</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">398</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/1073157.html" target="_blank">
            <span class="img-box" href="/product/1073157.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/1073157.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">永生花 · 「倾世之爱」奢宠   </span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">2999</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/1073094.html" target="_blank">
            <span class="img-box" href="/product/1073094.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/1073094.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">永生花 · To温暖你心</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">288</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/1073039.html" target="_blank">
            <span class="img-box" href="/product/1073039.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/1073039.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">永生花 · 爱与祝福</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">198</span>
            </p>
        </a>
    </li>

            </ul>
        </div>
    </div>
    <!-- 楼层03 End -->
    <!-- 楼层04 -->
    <div class="floor f4">
        <div class="hd">
            <a class="more" href="/cake/" target="_blank">更多蛋糕 &gt;&gt;</a>
            <h3><a href="/cake/" target="_blank">蛋糕</a><span>一起品味甜蜜时光</span></h3>
            <div class="dropdown">
                <a href="javascript:void(0)" data-hover="dropdown" data-delay="0" class="btn btn-default btn-sm">当前城市：<span class="text-primary">请选择</span> <span class="glyphicon glyphicon-triangle-bottom"></span><span class="glyphicon glyphicon-triangle-top"></span> <i>【请选择蛋糕配送城市】</i></a>
                <div class="dropdown-menu">
                    <div class="delivery-city-cont">
                        <h3>请选择或输入蛋糕配送城市</h3>
                        <h4>热门城市</h4>
                        <ul>
                            <li><a href="/cake/city/beijingdangao.html" target="_blank">北京</a></li>
                            <li><a href="/cake/city/shanghaidangao.html" target="_blank">上海</a></li>
                            <li><a href="/cake/city/guangzhoudangao.html" target="_blank">广州</a></li>
                            <li><a href="/cake/city/shenzhendangao.html" target="_blank">深圳</a></li>
                            <li><a href="/cake/city/tianjindangao.html" target="_blank">天津</a></li>
                            <li><a href="/cake/city/chengdudangao.html" target="_blank">成都</a></li>
                            <li><a href="/cake/city/chongqingdangao.html" target="_blank">重庆</a></li>
                            <li><a href="/cake/city/xiandangao.html" target="_blank">西安</a></li>
                            <li><a href="/cake/city/suzhoudangao.html" target="_blank">苏州</a></li>
                            <li><a href="/cake/city/hangzhoudangao.html" target="_blank">杭州</a></li>
                            <li><a href="/cake/city/nanjingdangao.html" target="_blank">南京</a></li>
                            <li><a href="/cake/city/?city=合肥" target="_blank">合肥</a></li>
                            <li><a href="/cake/city/wuhandangao.html" target="_blank">武汉</a></li>
                            <li><a href="/cake/city/?city=郑州" target="_blank">郑州</a></li>
                            <li><a href="/cake/city/?city=长沙" target="_blank">长沙</a></li>
                            <li><a href="/cake/city/?city=南昌" target="_blank">南昌</a></li>
                            <li><a href="/cake/city/haerbindangao.html" target="_blank">哈尔滨</a></li>
                            <li><a href="/cake/city/shenyangdangao.html" target="_blank">沈阳</a></li>
                            <li><a href="/cake/city/changchundangao.html" target="_blank">长春</a></li>
                            <li><a href="/cake/city/daliandangao.html" target="_blank">大连</a></li>
                            <li><a href="/cake/city/?city=青岛" target="_blank">青岛</a></li>
                            <li><a href="/cake/city/?city=济南" target="_blank">济南</a></li>
                            <li><a href="/cake/city/?city=福州" target="_blank">福州</a></li>
                            <li><a href="/cake/city/?city=厦门" target="_blank">厦门</a></li>
                            <li><a href="/cake/city/?city=昆明" target="_blank">昆明</a></li>
                            <li><a href="/cake/city/?city=贵阳" target="_blank">贵阳</a></li>
                            <li><a href="/cake/city/?city=南宁" target="_blank">南宁</a></li>
                            <li><a href="/cake/city/shijiazhuangdangao.html" target="_blank">石家庄</a></li>
                            <li><a href="/cake/city/?city=海口" target="_blank">海口</a></li>
                            <li><a href="/cake/city/taiyuandangao.html" target="_blank">太原</a></li>
                            <li><a href="/cake/city/?city=兰州" target="_blank">兰州</a></li>
                            <li><a href="/cake/city/?city=乌鲁木齐" target="_blank">乌鲁木齐</a></li>
                            <li><a href="/cake/city/tangshandangao.html" target="_blank">唐山</a></li>
                            <li><a href="/cake/city/huhehaotedangao.html" target="_blank">呼和浩特</a></li>
                            <li><a href="/cake/city/?city=东莞" target="_blank">东莞</a></li>
                            <li><a href="/cake/city/?city=佛山" target="_blank">佛山</a></li>
                            <li><a href="/cake/city/?city=宁波" target="_blank">宁波</a></li>
                            <li><a href="/cake/city/?city=无锡" target="_blank">无锡</a></li>
                            <li><a href="/cake/city/?city=温州" target="_blank">温州</a></li>
                            <li><a href="/cake/city/?city=常州" target="_blank">常州</a></li>
                        </ul>
                        <div class="form-box">
                            <input class="form-control" type="text" placeholder="请输入配送城市">
                            <a class="btn btn-link" href="javascript:void(0)"><span class="ico ico-search"></span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="bd">
            <div class="bd-l">
                <div class="banner-box">
                    <a href="/cake/"><img data-original="//img02.hua.com/pc/pimg/banner_cake.jpg" height="320" width="242"></a>
                </div>
                <a class="banner-link" href="/cake/">蛋糕专区 &gt;&gt;</a>
                <h4 style="margin:20px 12px 10px;">按城市选购蛋糕</h4>
                <ul class="item-list list-inline">
                    <li><a href="/cake/city/beijingdangao.html" target="_blank">北京</a></li>
                    <li><a href="/cake/city/shanghaidangao.html" target="_blank">上海</a></li>
                    <li><a href="/cake/city/shenzhendangao.html" target="_blank">深圳</a></li>
                    <li><a href="/cake/city/guangzhoudangao.html" target="_blank">广州</a></li>
                    <li><a href="/cake/city/tianjindangao.html" target="_blank">天津</a></li>
                    <li><a href="/cake/city/chongqingdangao.html" target="_blank">重庆</a></li>
                    <li><a href="/cake/city/chengdudangao.html" target="_blank">成都</a></li>
                    <li><a href="/cake/city/shenyangdangao.html" target="_blank">沈阳</a></li>
                    <li><a href="/cake/city/wuhandangao.html" target="_blank">武汉</a></li>
                    <li><a href="/cake/city/xiandangao.html" target="_blank">西安</a></li>
                    <li><a href="/cake/city/hangzhoudangao.html" target="_blank">杭州</a></li>
                    <li><a href="/cake/city/nanjingdangao.html" target="_blank">南京</a></li>
                    <li><a href="/cake/city/suzhoudangao.html" target="_blank">苏州</a></li>
                    <li><a href="/cake/" target="_blank">更多</a></li>
                </ul>
                <div class="line" style="margin:15px 12px;"></div>
                <h4 style="margin:20px 12px 10px;">蛋糕品牌</h4>
                <ul class="item-list list-inline">
                    <li><a href="/cake/ganso/" target="_blank">元祖蛋糕</a></li>
                    <li><a href="/cake/21cake/" target="_blank">廿一客蛋糕</a></li>
                    <li><a href="/cake/lecake/" target="_blank">诺心蛋糕</a></li>
                    <li><a href="/cake/incake/" target="_blank">INCAKE蛋糕</a></li>
                    <li><a href="/cake/beisike/" target="_blank">贝思客蛋糕</a></li>
                    <li><a href="/cake/boncake/" target="_blank">BONCAKE</a></li>
                    <li><a href="/cake/mcake/" target="_blank">Mcake蛋糕</a></li>
                    <li><a href="/cake/waffleboy/" target="_blank">窝夫小子蛋糕</a></li>
                    <li><a href="/cake/micamika/" target="_blank">米卡米卡蛋糕</a></li>
                    <li><a href="/cake/faxini/" target="_blank">法西妮蛋糕</a></li>
                    <li><a href="/cake/xfxb/" target="_blank">幸福西饼蛋糕</a></li>
                    <li><a href="/cake/vcake/" target="_blank">Vcake蛋糕</a></li>
                    <li><a href="/cake/yipinxuan/" target="_blank">一品轩蛋糕</a></li>
                    <li><a href="/cake/heartcheesecake/" target="_blank">心之和蛋糕</a></li>
                    <li><a href="/cake/allcitycake/" target="_blank">全国蛋糕</a></li>
                </ul>
            </div>
            <ul class="floor-products">

                    <li>
        <a href="/product/5302016.html" target="_blank">
            <span class="img-box" href="/product/5302016.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/5302016.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">元祖蛋糕 · 田园晓美(8寸)</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">218</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/5602016.html" target="_blank">
            <span class="img-box" href="/product/5602016.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/5602016.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">幸福西饼蛋糕 · 四重奏蛋糕(约2磅)</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">208</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/5901052.html" target="_blank">
            <span class="img-box" href="/product/5901052.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/5901052.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">诺心蛋糕 · 你好米菲 hallo miffy（2-4人食）</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">218</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/5142026.html" target="_blank">
            <span class="img-box" href="/product/5142026.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/5142026.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">Mcake蛋糕 · 鲜莓印雪</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">298</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/5131001.html" target="_blank">
            <span class="img-box" href="/product/5131001.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/5131001.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">贝思客蛋糕 · PAPI PAPI熊蛋糕（1.2磅）</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">198</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/5171001.html" target="_blank">
            <span class="img-box" href="/product/5171001.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/5171001.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">INCAKE蛋糕 · 经典双拼（1.2磅）</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">198</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/5171003.html" target="_blank">
            <span class="img-box" href="/product/5171003.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/5171003.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">INCAKE蛋糕 · 哆唻咪（1.2磅）</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">219</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/5171006.html" target="_blank">
            <span class="img-box" href="/product/5171006.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/5171006.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">INCAKE蛋糕 · 玛格丽特（1.5磅）</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">198</span>
            </p>
        </a>
    </li>

            </ul>
        </div>
    </div>
    <!-- 楼层04 End -->
    <!-- 楼层05 -->
    <div class="floor f5">
        <div class="hd">
            <a class="more" href="/gifts/" target="_blank">更多礼品 &gt;&gt;</a>
            <h3><a href="/gifts/" target="_blank">礼品</a><span>给她·最美好的礼物</span></h3>
        </div>
        <div class="bd">
            <div class="bd-l">
                <div class="banner-box">
                    <a href="/gifts/" target="_blank"><img data-original="//img02.hua.com/pc/pimg/banner_gift.jpg" height="320" width="242"></a>
                </div>
                <a class="banner-link" href="/gifts/" target="_blank">礼品专区 &gt;&gt;</a>
                <h4>按礼品类别选购</h4>
                <ul class="item-list list-special list-inline">
                    <li><a href="/gifts/crystallaser/" target="_blank">水晶内雕-3D激光内雕水晶</a></li>
                    <li><a href="/livingflower/" target="_blank">进口/泰国保鲜花</a></li>
                    <li><a href="/gifts/goldenflower/" target="_blank">金箔玫瑰/金箔画</a></li>
                    <li><a href="/gifts/musicbox/" target="_blank">精品音乐盒/八音盒</a></li>
                </ul>
                <div class="line"></div>
                <h4>按礼品用途选购</h4>
                <ul class="item-list list-inline">
                    <li><a href="/gifts/a_birthday/" target="_blank">生日礼品</a></li>
                    <li><a href="/gifts/a_dating/" target="_blank">约会/求爱礼品</a></li>
                    <li><a href="/gifts/a_wedding/" target="_blank">结婚礼品</a></li>
                    <li><a href="/gifts/a_thankyou/" target="_blank">感谢/祝福礼品</a></li>
                    <li><a href="/gifts/a_visit/" target="_blank">拜访/探望礼品</a></li>
                    <li><a href="/gifts/a_anniversary/" target="_blank">结婚纪念日礼品</a></li>
                </ul>
            </div>
            <ul class="floor-products">

                    <li>
        <a href="/product/1061006.html" target="_blank">
            <span class="img-box" href="/product/1061006.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/1061006.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">礼品 · 999纯金箔玫瑰+陶瓷花瓶</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">138</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/1064005.html" target="_blank">
            <span class="img-box" href="/product/1064005.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/1064005.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">礼品 · 十八音水晶钢琴</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">228</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/1065004.html" target="_blank">
            <span class="img-box" href="/product/1065004.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/1065004.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">礼品 · 宝石旋转木马/蓝</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">158</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/1071031.html" target="_blank">
            <span class="img-box" href="/product/1071031.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/1071031.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">礼品 · 心形3D水晶内雕陪你走到老</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">169</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/1060013.html" target="_blank">
            <span class="img-box" href="/product/1060013.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/1060013.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">礼品 · 一路上有你</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">338</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/1076032.html" target="_blank">
            <span class="img-box" href="/product/1076032.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/1076032.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">礼品 · T400爱心银项链女纯银双心形锁骨颈链</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">239</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/1070017.html" target="_blank">
            <span class="img-box" href="/product/1070017.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/1070017.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">礼品 · 天使之恋</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">138</span>
            </p>
        </a>
    </li>
    <li>
        <a href="/product/1082001.html" target="_blank">
            <span class="img-box" href="/product/1082001.html">
                <img data-original="//img01.hua.com/uploadpic/newpic/1082001.jpg_220x240.jpg" height="240" width="220">
            </span>
            <span class="product-title">礼品 · 公爵套装雕羽</span>
            <p class="price">
                <span class="price-sign">&yen;</span>
                <span class="price-num">189</span>
            </p>
        </a>
    </li>

            </ul>
        </div>
    </div>
    <!-- 楼层05 End -->
    <!-- 面板 -->
    <div class="panel-wrapper">
        <div class="gray-panel news1">
            <div class="hd">
                <a href="/profile/gdsj.html" target="_blank"><span class="ico ico-plus"></span></a>
                <h4>感动瞬间</h4>
            </div>
            <div class="bd">
                <ul>

                        <li><a href="//www.hua.com/profile/19626.html" target="_blank" title="8年送花99束，神一样的花礼网客户">8年送花99束，神一样的花礼网客户</a></li>
                        <li><a href="//www.hua.com/profile/19563.html" target="_blank" title="花礼网用户故事 | 那些感动我们的，向来都是大爱">花礼网用户故事 | 那些感动我们的，</a></li>
                        <li><a href="//www.hua.com/profile/19560.html" target="_blank" title="鲜花——见证跨越海峡的异地恋">鲜花——见证跨越海峡的异地恋</a></li>
                        <li><a href="//www.hua.com/profile/19513.html" target="_blank" title="你和恋人都是怎样确定关系的？">你和恋人都是怎样确定关系的？</a></li>
                        <li><a href="//www.hua.com/profile/19133.html" target="_blank" title="超感动 | 花礼网用户真情告白故事">超感动 | 花礼网用户真情告白故事</a></li>
                        <li><a href="//www.hua.com/profile/19129.html" target="_blank" title="盘点花礼用户印象中最深刻的一次亲吻">盘点花礼用户印象中最深刻的一次亲吻</a></li>
                </ul>
            </div>
        </div>
        <div class="gray-panel comments">
            <div class="hd">
                <a href="/productpj/" target="_blank"><span class="ico ico-plus"></span></a>
                <h4>最新评价</h4>
            </div>
            <div class="bd">

                    <dl class="comment-item dl-horizontal">
                        <dt>
                            <a href="/product/5021001.html" target="_blank">
                                <img src="../assets/Picture/5021001.jpg_80x87.jpg" height="38" width="37" class="img-thumbnail">
                                135****8479
                            </a>
                        </dt>
                        <dd>
                            <div class="info">
                                <div class="rating"><span class="ico-rating r5"></span></div>
                                <p class="cnt">
                                    <a href="/productpj/5021001.html" target="_blank">
                                        内容：
                                        非常有信誉，按时送达，非常满意
                                    </a>
                                </p>
                            </div>
                            <div class="date">2018-04-23</div>
                        </dd>
                    </dl>
                    <dl class="comment-item dl-horizontal">
                        <dt>
                            <a href="/product/9012167.html" target="_blank">
                                <img src="../assets/Picture/9012167.jpg_80x87.jpg" height="38" width="37" class="img-thumbnail">
                                934986*
                            </a>
                        </dt>
                        <dd>
                            <div class="info">
                                <div class="rating"><span class="ico-rating r5"></span></div>
                                <p class="cnt">
                                    <a href="/productpj/9012167.html" target="_blank">
                                        内容：
                                        不错不错不错不错
                                    </a>
                                </p>
                            </div>
                            <div class="date">2018-04-23</div>
                        </dd>
                    </dl>
                    <dl class="comment-item dl-horizontal">
                        <dt>
                            <a href="/product/9012092.html" target="_blank">
                                <img src="../assets/Picture/9012092.jpg_80x87.jpg" height="38" width="37" class="img-thumbnail">
                                183****2397
                            </a>
                        </dt>
                        <dd>
                            <div class="info">
                                <div class="rating"><span class="ico-rating r5"></span></div>
                                <p class="cnt">
                                    <a href="/productpj/9012092.html" target="_blank">
                                        内容：
                                        还可以  送的比较及时
                                    </a>
                                </p>
                            </div>
                            <div class="date">2018-04-23</div>
                        </dd>
                    </dl>
            </div>
        </div>
        <div class="gray-panel news">
            <div class="hd">
                <a href="/huayu/" target="_blank"><span class="ico ico-plus"></span></a>
                <h4>热门资讯</h4>
            </div>
            <div class="bd">
                <ul>

                        <li><a href="//www.hua.com/huayu/14821.html" target="_blank" title="12星座异地恋如何维持？送你一份送花攻略！">12星座异地恋如何维持？送你一份</a></li>
                        <li><a href="//www.hua.com/huayu/16339.html" target="_blank" title="看十二生肖收花如何反应？一图看出爱情运势">看十二生肖收花如何反应？一图看出</a></li>
                        <li><a href="//www.hua.com/huayu/10786.html" target="_blank" title="送花的含义，生活中怎么送花？">送花的含义，生活中怎么送花？</a></li>
                        <li><a href="//www.hua.com/huayu/11031.html" target="_blank" title="送女朋友鲜花，送花卡片写什么？">送女朋友鲜花，送花卡片写什么？</a></li>
                        <li><a href="//www.hua.com/huayu/13297.html" target="_blank" title="异地恋有大招，教你不分手！">异地恋有大招，教你不分手！</a></li>
                        <li><a href="//www.hua.com/huayu/21503.html" target="_blank" title="空气凤梨——软装界新贵">空气凤梨——软装界新贵</a></li>
                </ul>
                <ul>
                    
                    <li><a href="/theme/mothersday/" target="_blank">母亲节鲜花</a></li>
                    <li><a href="/huayu/20051115103610.htm" target="_blank">鲜花枝数与其对应的含意</a></li>
                    <li><a href="/huayu/20051115103923.htm" target="_blank">鲜花寓意 浪漫花语</a></li>
                    <li><a href="/huayu/20051116174222.htm" target="_blank">通用送花祝福语-经典送花祝福语</a></li>
                    <li><a href="/huayu/20051115105306.htm" target="_blank">送花的常识与技巧</a></li>
                    <li><a href="/huayu/20050405004253.htm" target="_blank">女孩都喜欢别人送鲜花吗？</a></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- 面板 End -->
    <!-- app+微信 -->
    <div class="app-wx-wrapper">
        <div class="app-download">
            <img data-original="//img02.hua.com/pc/pimg/app_download_qrcode.png" height="122" width="122">
            <div class="intro first">
                <h5>手机APP下载</h5>
                <p>新人专享100元大礼包</p>
                <a href="https://at.umeng.com/aOPD0f" target="_blank"><span class="ico ico-apple"></span></a>
                <a href="https://at.umeng.com/GD8v0n"><span class="ico ico-android"></span></a>
            </div>
        </div>
        <div class="cartoon">
            <a href="/manhua/" target="_blank"><img data-original="//img02.hua.com/pc/pimg/home_manhua.jpg" height="143" width="466"></a>
        </div>
        <div class="weixin">
            <img data-original="//img02.hua.com/pc/pimg/wechat_qrcode_b.png" height="122" width="122">
            <div class="intro">
                <h5>关注微信</h5>
                <p>回复“礼物”有惊喜！"<br>活动多多，在花礼遇见幸福的自己</p>
                <span class="ico ico-weixin-app"></span>
            </div>
        </div>
    </div>
    <!-- app+微信 End-->
    <!-- 尾部服务 -->
    <div class="footer-server">
        <ul>
            <li><a href="/profile/why_choose_us.htm#pp" target="_blank"><span class="ico ico-server-w1"></span>十三年品牌</a></li>
            <li><a href="/profile/why_choose_us.htm#xldy" target="_blank"><span class="ico ico-server-w2"></span>销量领先</a></li>
            <li><a href="/profile/why_choose_us.htm#bwkh_btn" target="_blank"><span class="ico ico-server-w3"></span>百万客户信赖</a></li>
            <li><a href="/profile/why_choose_us.htm#ychy_btn" target="_blank"><span class="ico ico-server-w4"></span>时尚原创花艺</a></li>
            <li><a href="/profile/why_choose_us.htm#ddsp_btn" target="_blank"><span class="ico ico-server-w5"></span>订单实拍</a></li>
            <li><a href="/profile/why_choose_us.htm#djbz_btn" target="_blank"><span class="ico ico-server-w6"></span>低价保障</a></li>
            <li><a href="/profile/why_choose_us.htm#sd_btn" target="_blank"><span class="ico ico-server-w7"></span>3小时配送</a></li>
            <li class="last-child"><a href="/profile/why_choose_us.htm#tpcn_btn" target="_blank"><span class="ico ico-server-w8"></span>200%退赔承诺</a></li>
        </ul>
    </div>
    <!-- 尾部服务 End -->
</div>

    <!--底部-->
    <!-- 尾部导航 -->
    <div class="footer-nav">
        <a href="/">首页</a> <b>|</b> <a href="/profile/about.htm" target="_blank">关于我们</a> <b>|</b> <a href="/profile/media.html" target="_blank">媒体报道</a> <b>|</b> <a href="/profile/contact.htm" target="_blank">联系方式</a> <b>|</b> <a href="/qiyetuangou/" target="_blank">企业团购</a> <b>|</b><a href="/liansuo/" target="_blank">花店入驻</a><b>|</b>  <a href="/profile/links.htm" target="_blank">友情链接</a> <b>|</b> <a href="/member/payment/balancefill" target="_blank">在线补款</a> <b>|</b> <a class="last-child" href="/profile/why_choose_us.htm" target="_blank">为什么选择中国鲜花礼品网</a>
    </div>
    <!-- 尾部导航 End -->
    <!-- 尾部帮助 -->
    <div class="footer-help">
        <div class="container">
            <div class="mod mod-a">
                <h4>客户服务</h4>
                <ul class="list-unstyled">
                    <li><a href="/help/default.htm" target="_blank" rel="nofollow">服务声明</a></li>
                    <li><a href="/help/payment.htm" target="_blank" rel="nofollow">支付说明</a></li>
                    <li><a href="/help/payment_foreign.htm" target="_blank" rel="nofollow">境外支付</a></li>
                    <li><a href="/help/send_shuoming.htm" target="_blank" rel="nofollow">配送说明</a></li>
                    <li><a href="/help/sendRange.htm" target="_blank" rel="nofollow">配送范围</a></li>
                    <li><a href="/help/ordercx/" target="_blank" rel="nofollow">订单查询</a></li>
                    <li><a href="/help/order_cancel.htm" target="_blank" rel="nofollow">取消订单</a></li>
                    <li><a href="/help/re_payment.htm" target="_blank" rel="nofollow">补交货款</a></li>
                    <li><a href="/help/private.htm" target="_blank" rel="nofollow">隐私条款</a></li>
                    <li><a href="/help/safe.htm" target="_blank" rel="nofollow">安全条款</a></li>
                </ul>
            </div>
            <div class="mod mod-b">
                <h4>热门咨询</h4>
                <ul class="list-unstyled">
                    <li><a href="/help/shop_step.htm" target="_blank" class="thiscolor_h">中国鲜花礼品网购物流程</a></li>
                    <li><a href="/help/demo.htm" target="_blank">中国鲜花礼品网订购演示</a> </li>
                    <li><a href="/help/sendRange.htm" target="_blank">鲜花网能配送哪些城市？</a></li>
                    <li><a href="/help/afterservice.htm" target="_blank">鲜花售后服务是怎么样的？</a></li>
                    <li><a href="/help/Orde_in_advance.htm" target="_blank">我应该提前多久预订鲜花？</a></li>
                </ul>
            </div>
            <div class="mod mod-c">
                <h4><a href="/huadian/" target="_blank">同城鲜花专区</a></h4>
                <ul class="list-unstyled">
                    <li><a href="http://sz.hua.com/" target="_blank" title="深圳鲜花">深圳鲜花</a></li>
                    <li><a href="http://bj.hua.com/" target="_blank" title="北京鲜花">北京鲜花</a></li>
                    <li><a href="http://sh.hua.com/" target="_blank" title="上海鲜花">上海鲜花</a></li>
                    <li><a href="http://gz.hua.com/" target="_blank" title="广州鲜花">广州鲜花</a></li>
                    <li><a href="http://tj.hua.com/" target="_blank" title="天津鲜花">天津鲜花</a></li>
                    <li><a href="http://cq.hua.com/" target="_blank" title="重庆鲜花">重庆鲜花</a></li>
                    <li><a href="http://cd.hua.com/" target="_blank" title="成都鲜花">成都鲜花</a></li>
                    <li><a href="http://xa.hua.com/" target="_blank" title="西安鲜花">西安鲜花</a></li>
                    <li><a href="http://wh.hua.com/" target="_blank" title="武汉鲜花">武汉鲜花</a></li>
                    <li><a href="http://nj.hua.com/" target="_blank" title="南京鲜花">南京鲜花</a></li>
                    <li><a href="http://xm.hua.com/" target="_blank" title="厦门鲜花">厦门鲜花</a></li>
                    <li><a href="/help/sendRange.htm" target="_blank" title="更多城市">更多城市</a></li>
                </ul>
            </div>
            <div class="mod mod-d">
                <h4>联系我们</h4>
                <p>
                    全国订购热线:400-889-8188(免长途费)<br>
                    <a href="/chat/" target="_blank">在线客服</a><br>
                    7x24小时在线订购<br>
                    客服工作时间：8:30-21:00<br>
                    E-mail: <a href="mailto:kefu@hua.com">kefu@hua.com</a>
                </p>
            </div>
        </div>
    </div>
    <!-- 尾部帮助 End -->
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
        <p>花礼网 （中国鲜花礼品网） <a href="/">www.hua.com</a><span> 深圳市百易信息技术有限公司</span> 中国鲜花网领先品牌，鲜花速递专家！</p>
    </footer>
    <!-- 通用尾部 End -->
    <!-- 弹出窗口-->
    
    <!-- 弹出窗口end-->
    <!-- 友情链接 -->
    <div class="footer-link">
        <b>友链</b>
        <div>
            <a href="http://www.chinaname.cn/" target="_blank">中华取名网</a> <a href="http://sz.fang.com/" target="_blank">深圳房产网</a> <a href="http://www.juanpi.com" target="_blank">卷皮网</a> <a href="http://www.wbiao.cn" target="_blank">腕表</a>  <a href="http://www.bbhun.com" target="_blank">宝贝婚团网</a> <a href="http://www.yuanlin365.com/" target="_blank">苗木</a> <a href="http://www.zocai.com/" target="_blank">佐卡伊珠宝网</a> <a href="http://www.blove.com/" target="_blank">钻石婚戒定制</a> <a href="http://www.spider.com.cn/" target="_blank">杂志</a> <a href="http://www.iyijiao.com/" target="_blank">中国青少年艺术教育网</a> <a href="http://www.aiuw.com/" target="_blank">装修网</a> <a href="http://www.dog126.com/" target="_blank">淘狗网</a> <a href="http://www.liwuyou.com/" target="_blank">礼无忧网</a> <a href="http://www.goupuzi.com/" target="_blank">宠物狗</a> <a href="http://www.jiyouwang.com/" target="_blank">机友网</a> <a href="http://www.cocodiy.com/" target="_blank">礼物网</a> <a href="http://zx.meilele.com/" target="_blank">装修</a> <a href="http://www.ipo3.com/" target="_blank">新三板</a> <a href="http://www.huoming.com/" target="_blank">商标注册</a> <a href="http://www.loho88.com" target="_blank">眼镜店</a>
        </div>
    </div>
    <!-- 友情链接 End -->
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
                                    <img src="../assets/Picture/qr_wx.jpg" width="110" height="110">
                                    关注微信公众号
                                </p>
                                <p>
                                    <img src="../assets/Picture/qr_app.jpg" width="110" height="110">
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

    
    <script type="text/javascript" src="../assets/Scripts/common_index.js"></script>
    <script type="text/javascript" src="../assets/Scripts/statesandright.js"></script>
    <script src="../assets/Scripts/jquery.lazyload.min.js" type="text/javascript"></script>
    <script>
        //异步加载图片
        $("img[data-original]").lazyload({
            effect: "fadeIn",
            threshold: 400,
            placeholder: "//img02.hua.com/m/pro_detail/375x409.png"
        });


        // 大图轮翻(5秒)
        $('#fullCarousel').carousel({ interval: 5000 });

        // 大图鼠标移到小圆点轮翻
        $("#fullCarousel ol li").hover(function () {
            var index = $("#fullCarousel ol li").index(this);
            $("#fullCarousel").carousel(index);
        });

        // 大图右侧banner鼠标移上左移动
        $('.focus-wrapper a').hover(
            function () {
                $(this).animate({
                    left: '-5px'
                }, 300);
            },
            function () {
                $(this).animate({
                    left: '0'
                }, 300);
            }
        );

        // 漫画选花放大
        $('.comic-choose img').hover(
            function () {
                $(this).animate({
                    width: '270px',
                    height: '216px',
                    margin: '-10px 0 0 -8px'
                }, 100);
            },
            function () {
                $(this).animate({
                    width: '250px',
                    height: '200px',
                    margin: '0'
                }, 100);
            }
        );
        // 花粉晒幸福(3秒)
        $('#showCarousel').carousel({ interval: 3000 });
    </script>

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
    <script async src="../assets/Scripts/9beb9a3765124a9dba6368c3fab8063f.js"></script>
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