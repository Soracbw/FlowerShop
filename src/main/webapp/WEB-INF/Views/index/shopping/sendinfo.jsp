<%@ page language="java" pageEncoding="utf-8" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta charset="utf-8">
    <title>填写订单-花礼网</title>
    <meta name="description">
    <meta name="keywords">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit|ie-comp">
    <link rel="icon" href="../../assets/Images/favicon.ico" mce_href="/favicon.ico" type="image/x-icon">
    
    
    
    

    <!--[if lt IE 9]>
        <script src="//img02.hua.com/pc/assets/js/html5shiv.min.js"></script>
    <![endif]-->
    <!-- Google Tag Manager -->
    
    <!-- End Google Tag Manager -->

<link rel="stylesheet" type="text/css" href="../../assets/Css/sendinfo.css" media="all">
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
            <h1><a href="https://www.hua.com/" class="logo-bd">花礼网</a></h1>
            <i></i>
            <h2>中国鲜花礼品网 开始2005，简称花礼网</h2>
        </div>
        <div class="service">
            <span class="ico ico-phone"></span>400-889-8188
            <a href="https://www.hua.com/chat/" target="_top"><span class="ico ico-headset"></span>在线客服</a>
        </div>
    </header>
    <!-- 头部 End -->
    


<form method="POST" action="https://www.hua.com/shopping/OrderSave" id="form1" name="form1">
    <div class="container">
        <!-- 填写订单信息 -->
        <div class="cart-panel">
            <div class="hd"><h3>填写订单信息</h3></div>
            <div class="bd">
                <!-- 收货人信息 -->

                        <div class="order-item">
                            <div class="item-hd">
                                <a class="j-consignee" href="javascript:AddressOper('ismember','add')">新增收货人+</a>
                                <h5>收货人信息</h5>
                            </div>
                            <div class="item-bd">
                                <div id="showAddress">
                                            <div class="address-bar">
                                                <div class="operate">
                                                    <a href="javascript:AddressOper('1928994','edit')">编辑</a>
                                                </div>
                                                <div class="name active " id="address1928994">zu<i class="ico ico-check"></i></div>
                                                <div class="address">
                                                    <i class="wzsj_1" id="address1928994_0">zu</i>
                                                    <i class="wzsj"><span id="address1928994_1">山西</span> <span id="address1928994_2">太原市</span> <span id="address1928994_area">小店区</span> <span id="address1928994_3">黄河小学18号</span></i>
                                                    <i><span id="address1928994_4">17671751371</span> <span id="address1928994_5"></span></i>
                                                    <i style="color: rgb(255, 255, 255); background: none repeat scroll 0% 0% rgb(184, 184, 184); line-height: 22px; padding: 0px 5px; margin-top: 4px;"> 默认地址</i><span id="address1928994_6" style="display: none;">0</span>
                                                    <span style="display: none;" id="address1928994_areacode">140105</span>
                                                    <span style="display: none;" id="address1928994_valid4pp">1</span>
                                                </div>
                                            </div>

                                </div>
                            </div>
                        </div>
                                                            <input id="to_name" name="to_name" value="zu" type="hidden">
                                                            <input id="to_state" name="to_state" value="山西" type="hidden">
                                                            <input id="to_city" name="to_city" value="太原市" type="hidden">
                                                            <input id="to_address" name="to_address" value="黄河小学18号" type="hidden">
                                                            <input id="to_mobile" name="to_mobile" value="17671751371" type="hidden">
                                                            <input id="to_tel" name="to_tel" value="" type="hidden">
                                                            <input id="to_area" name="to_area" value="小店区" type="hidden">
                                                            <input id="to_area_code" name="to_area_code" value="140105" type="hidden">
                                                            <input id="valid_4_pp" name="valid_4_pp" value="1" type="hidden">
                                                            <input id="peisongfei" name="peisongfei" value="0" type="hidden">
                <!-- 收货人信息 End -->
                <!-- 订购人信息 -->
                <div class="order-item">
                    <div class="item-hd">
                        <h5>订购人信息</h5>
                    </div>
                    <div class="item-bd">
                        <div class="form-inline order-form" style="display: none;" id="OrderPersonInfo">
                            <div class="form-group">
                                <input class="form-control input-sm" id="realname" name="realname" value="张洋" placeholder="您的姓名" style="width: 140px;" maxlength="15" type="text">
                            </div>
                            <div class="form-group">
                                <input class="form-control input-sm" id="phone" name="phone" value="17671751371" placeholder="手机号码或电话" style="width: 140px;" maxlength="25" type="text">
                            </div>
                            <div class="form-group">
                                        <input class="form-control input-sm" id="Email" name="Email" value="846965599@qq.com" readonly="" style="width: 200px;" type="text">
                            </div>
                            <button class="btn btn-primary btn-sm" type="button" onclick="DoOrderPersonInfo()">确定</button>
                        </div>
                        <div class="order-info" id="OrderPersonInfoText">
                            <span id="M_RealName">张洋</span> <span id="M_Phone">17671751371</span>
                                <span id="M_Email">846965599@qq.com</span>
                            <a href="javascript:EditOrderPersonInfo()">编辑</a>
                        </div>
                    </div>
                </div>
                <!-- 订购人信息 End -->
                <!-- 配送日期/配送时段 -->

                <div class="order-item">
                    <div class="order-item-inner date">
                        <div class="item-hd" style="width: 300px;">
                            <h5 style="display: inline-block;">送达日期</h5>                        </div>
                        <div class="item-bd input-date" id="selectDay">
                            <input class="form-control input-sm" id="send_riqi" name="send_riqi" value="2018-4-" type="text">
                            <span class="ico-riqi" id="xingqi"></span>
                            <i class="ico ico-calendar" id="rlTu"></i>
                        </div>
                        <div id="divShow" style="position: absolute; z-index: 9999; width: 400px; height: auto; display: none; background: none repeat scroll 0% 0% rgb(255, 255, 255); border: 1px solid rgb(255, 207, 98);"><iframe src="index_1.html" id="dialogIframe" name="dialogIframe" marginwidth="0" marginheight="0" scrolling="no" style="border: 0px none; width: 100%; height: 320px;" frameborder="0"></iframe></div>
                    </div>
                    <div class="order-item-inner time">
                            <div class="item-hd">
                                <h5>配送时段</h5>
                            </div>
                            <div class="item-bd">
                                <ul class="selects-list" id="timeFrame">
                                    <li class="active" id="timeSelect0">不限<i class="ico ico-check"></i></li>
                                    <li data-popover="true" data-content="<span class='text-primary'>08:30-12:00</span>" id="timeSelect1">上午<i class="ico ico-check"></i></li>
                                    <li data-popover="true" data-content="<span class='text-primary'>12:00-18:00</span>" id="timeSelect2">下午<i class="ico ico-check"></i></li>
                                    <li data-popover="true" data-content="<span class='text-primary'>18:00-21:00</span>" id="timeSelect3">晚上<i class="ico ico-check"></i></li>
                                        <li data-popover="true" data-content="<span class='text-primary'>定时服务+30元(非节日)，误差±15分钟。</span>" id="timeSelect4">定时<i class="ico ico-check"></i></li>
                                    <span style="float: left; display: none;" id="selectTimes">
                                        <select id="select_hours" name="select_hours" style="height: 30px; width: 50px;" onchange="checkSendDate();">
                                            <option value="08">08</option>
                                            <option value="09">09</option>
                                            <option value="10" selected="selected">10</option>
                                            <option value="11">11</option>
                                            <option value="12">12</option>
                                            <option value="13">13</option>
                                            <option value="14">14</option>
                                            <option value="15">15</option>
                                            <option value="16">16</option>
                                            <option value="17">17</option>
                                            <option value="18">18</option>
                                            <option value="19">19</option>
                                            <option value="20">20</option>
                                            <option value="21">21</option>
                                        </select>时
                                        <select id="select_minutes" name="select_minutes" style="height: 30px; width: 50px;" onchange="checkSendDate();">
                                            <option value="00">00</option>
                                            <option value="05">05</option>
                                            <option value="10">10</option>
                                            <option value="15">15</option>
                                            <option value="20">20</option>
                                            <option value="25">25</option>
                                            <option value="30" selected="selected">30</option>
                                            <option value="35">35</option>
                                            <option value="40">40</option>
                                            <option value="45">45</option>
                                            <option value="50">50</option>
                                            <option value="55">55</option>
                                        </select>分
                                    </span>
                                </ul>
                            </div>

                    </div>


                    <p class="error-info" id="SendDate_ErrorInfo" style="display: none;"><span class="text-primary" id="dateErrMsg">特别提醒：日期格式不正确,请选择正确的日期格式, 例如：2015-5-15</span></p>
                    <p class="error-info" id="jieri_notsend" style="display: none;"></p>
                    <p class="error-info" id="jieri_notice" style="display: none;"></p>
                    <p class="error-info" id="fp_info" style="display: none;">定时服务<span class="text-primary">+30元</span>(非节日)，误差<span class="text-primary">±15</span>分钟。(如果付款时间在21:00-8:30，定时时间需晚于10点)</p>
                </div>
                <input name="send_timezone" id="send_timezone" value="随时都可" type="hidden">
                <!-- 配送日期/配送时段 End -->
                <!-- 贺卡内容 -->
                <div class="order-item">
                    <div class="order-item-inner card-text">
                            <div class="item-hd">
                                <h5>贺卡留言+署名</h5>
                            </div>
                            <div class="item-bd" id="cardText">
                                <textarea maxlength="400" class="form-control" id="words" name="words" rows="5" placeholder="贺卡留言+署名"></textarea>
                                <p class="helpBlock">最多200字，您还可以输入 <var class="word">200</var> 字。（仅支持中文，英文）</p>
                            </div>
                    </div>

                    <div class="order-item-inner card-option">
                            <ul class="tab-card">
                                <li class="active"><a href="#cardPane00">母亲节</a></li>
                                <li><a href="#cardPane01">送恋人</a></li>
                                <li><a href="#cardPane02">送朋友</a></li>
                                <li><a href="#cardPane03">送长辈</a></li>
                            </ul>
                            <div class="tab-content card-content">
                                <ul class="tab-pane in active" id="cardPane00">
                                    <li data-popover="true" data-content="亲爱的妈妈：虽然我无法阻止岁月为你增添白发，却能够多为你带来一份喜悦。希望你有一个好的身体，有一个好的心态，过健康快乐的日子。愿鲜花带给你美丽的心情，母亲节快乐！">
                                        1.亲爱的妈妈：虽然我无法阻止岁月为你增添白发，却能够多为你带来一份喜悦。希望你有一个好的身体，有一个好的心态，过健康快乐的日子。愿鲜花带给你美丽的心情，母亲节快乐！
                                    </li>
                                    <li data-popover="true" data-content="“洗衣做饭忙不完，每日忙碌不着闲，历经风霜添白发，勤劳持家不知烦”。作为儿子女儿的我们，深知您每天的辛苦忙碌，但作为儿子女儿的我们，同样要给您幸福，祝您节日快乐，幸福万年长。">
                                        2.“洗衣做饭忙不完，每日忙碌不着闲，历经风霜添白发，勤劳持家不知烦”。作为儿子女儿的我们，深知您每天的辛苦忙碌，但作为儿子女儿的我们，同样要给您幸福，祝您节日快乐，幸福万年长。
                                    </li>
                                    <li data-popover="true" data-content="天空广阔，比不上母亲的博爱广阔；太阳温暖，比不上母亲的真情温暖；鲜花灿烂，比不上母亲的微笑灿烂；彩虹鲜艳，比不上母亲的快乐鲜艳。祝母亲节快乐!">
                                        3.天空广阔，比不上母亲的博爱广阔；太阳温暖，比不上母亲的真情温暖；鲜花灿烂，比不上母亲的微笑灿烂；彩虹鲜艳，比不上母亲的快乐鲜艳。祝母亲节快乐!
                                    </li>
                                    <li data-popover="true" data-content="天地之间，母爱最真；岁月之中，母爱最久；时光荏苒，母爱不朽。母亲节到了，祝福你幸福吉祥常相伴，开心美丽赛鲜花！">
                                        4.天地之间，母爱最真；岁月之中，母爱最久；时光荏苒，母爱不朽。母亲节到了，祝福你幸福吉祥常相伴，开心美丽赛鲜花！
                                    </li>
                                    <li data-popover="true" data-content="亲爱的妈妈，虽然平时一直和你吵吵闹闹，也不常表露对你的感谢，其实心里始终对您有感激。母亲节了，祝您身体健康，永远快乐。">
                                        5.亲爱的妈妈，虽然平时一直和你吵吵闹闹，也不常表露对你的感谢，其实心里始终对您有感激。母亲节了，祝您身体健康，永远快乐。
                                    </li>
                                    <li data-popover="true" data-content="妈妈：母亲节快乐！感谢您给了我生命，更给了我满满的爱，让我无比幸福。总能在您身上感受到对生活的激情，又不失温和智慧，一切都那么美好。祝愿您身体健康，天天开心！">
                                        6.妈妈：母亲节快乐！感谢您给了我生命，更给了我满满的爱，让我无比幸福。总能在您身上感受到对生活的激情，又不失温和智慧，一切都那么美好。祝愿您身体健康，天天开心！
                                    </li>
                                    <li data-popover="true" data-content="亲爱的妈妈：不想时间过得那么快，因为我想有再多一点时间回家陪着你。不要觉得自己老了，在我心里，永远是那么青春靓丽！不要过分操劳，咱家事事都顺心如意！妈妈节日快乐，我们爱你！祝妈妈永远年轻漂亮！身体健康！">
                                        7.亲爱的妈妈：不想时间过得那么快，因为我想有再多一点时间回家陪着你。不要觉得自己老了，在我心里，永远是那么青春靓丽！不要过分操劳，咱家事事都顺心如意！妈妈节日快乐，我们爱你！祝妈妈永远年轻漂亮！身体健康！
                                    </li>
                                    <li data-popover="true" data-content="妈妈，当我难过时，您比我还难过。当我快乐时，您比我还高兴。在我成长过程中，您给了我所有的爱！我经常气你，但是你从不埋怨我。我经常懒惰，但是你还是容忍了我。您是这个世界上最爱我的人，我爱你，妈妈，全心全意！">
                                        8.妈妈，当我难过时，您比我还难过。当我快乐时，您比我还高兴。在我成长过程中，您给了我所有的爱！我经常气你，但是你从不埋怨我。我经常懒惰，但是你还是容忍了我。您是这个世界上最爱我的人，我爱你，妈妈，全心全意！
                                    </li>
                                    <li data-popover="true" data-content="愿时光温柔不曾在您身上停留；愿岁月静好幸福始终在您身边环绕。感恩您二十余载的含辛茹苦，母亲节快乐！">
                                        9.愿时光温柔不曾在您身上停留；愿岁月静好幸福始终在您身边环绕。感恩您二十余载的含辛茹苦，母亲节快乐！
                                    </li>
                                    <li data-popover="true" data-content="曾经未能百般体贴，看您慢慢老去未能抚平身心的伤痛。只是希望您能像鲜花一样每天充满活力和艳丽，爱你妈妈！">
                                        10.曾经未能百般体贴，看您慢慢老去未能抚平身心的伤痛。只是希望您能像鲜花一样每天充满活力和艳丽，爱你妈妈！
                                    </li>
                                    <li data-popover="true" data-content="世界上最了解我的人就是你，你是我的妈妈，也是我的朋友、我的知己，更是生命中最中要的人，老妈我爱你！母亲节快乐！在我无法陪伴左右的日子里，愿老妈每一天都平安健康快乐！">
                                        11.世界上最了解我的人就是你，你是我的妈妈，也是我的朋友、我的知己，更是生命中最中要的人，老妈我爱你！母亲节快乐！在我无法陪伴左右的日子里，愿老妈每一天都平安健康快乐！
                                    </li>
                                    <li data-popover="true" data-content="亲爱的妈妈，今天是母亲节，感谢母亲多年养育恩，感谢母亲多年教诲情。走遍天涯海角，您在的地方才是永远的家；听遍千言万语，您说的话才是拨动心铉的金玉；吃遍四面八方，您做的饭菜才是最香；看遍人情冷暖，您给的关心才是最真挚的爱。母亲节，愿您节日快乐，健康长寿！">
                                        12.亲爱的妈妈，今天是母亲节，感谢母亲多年养育恩，感谢母亲多年教诲情。走遍天涯海角，您在的地方才是永远的家；听遍千言万语，您说的话才是拨动心铉的金玉；吃遍四面八方，您做的饭菜才是最香；看遍人情冷暖，您给的关心才是最真挚的爱。母亲节，愿您节日快乐，健康长寿！
                                    </li>
                                    <li data-popover="true" data-content="假如我是个诗人，我就要写一首诗，来赞美您的爱；假如我是画家，我就要用各种颜色，描绘出你的慈容。但我什么都不是!我想说的是：妈咪，我爱你，您辛苦了！永远爱你！">
                                        13.假如我是个诗人，我就要写一首诗，来赞美您的爱；假如我是画家，我就要用各种颜色，描绘出你的慈容。但我什么都不是!我想说的是：妈咪，我爱你，您辛苦了！永远爱你！
                                    </li>
                                    <li data-popover="true" data-content="一向不善在您面前表达的我，也没有给你说过什么感谢的话，但您对我的关心和爱意，点点滴滴都记在我心头，在这特别的日子送上我特别的问候，祝：您节日快乐，健康永远">
                                        14.一向不善在您面前表达的我，也没有给你说过什么感谢的话，但您对我的关心和爱意，点点滴滴都记在我心头，在这特别的日子送上我特别的问候，祝：您节日快乐，健康永远
                                    </li>
                                    <li data-popover="true" data-content="母亲像杯茶，把清香送给我们，把苦涩留给自己；母亲是把伞，把舒适留给我们，把风雨挡在身上；母亲是世上最爱你和最值得你爱的人。在母亲节的日子里，祝福妈妈健康长寿 ！！">
                                       15.母亲像杯茶，把清香送给我们，把苦涩留给自己；母亲是把伞，把舒适留给我们，把风雨挡在身上；母亲是世上最爱你和最值得你爱的人。在母亲节的日子里，祝福妈妈健康长寿 ！！
                                    </li>
                                    <li data-popover="true" data-content="许多许多的旅途，可以用脚步丈量，更多更多的遥远都可以用眼睛张望，唯有思念的距离，是用牵挂的长丝织成的网，或密或疏，或短或长，如同种在心里的一株玫瑰，有一点刺痛，却恒久留香。祝妈妈节日快乐，永远美丽！">
                                        16.许多许多的旅途，可以用脚步丈量，更多更多的遥远都可以用眼睛张望，唯有思念的距离，是用牵挂的长丝织成的网，或密或疏，或短或长，如同种在心里的一株玫瑰，有一点刺痛，却恒久留香。祝妈妈节日快乐，永远美丽！
                                    </li>
                                    <li data-popover="true" data-content="如果这个世界上有一百个人爱你，那么爱你最深的一定是你的妈妈。如果这个世界上有十个人爱你，那么爱你最深的一定是你的妈妈。如果这个世界上只有一个人爱你，那么这个人，一定是你的妈妈。今天母亲节，不要吝啬对这个世界上最爱你的人说一句：妈妈，我爱你。">
                                        17.如果这个世界上有一百个人爱你，那么爱你最深的一定是你的妈妈。如果这个世界上有十个人爱你，那么爱你最深的一定是你的妈妈。如果这个世界上只有一个人爱你，那么这个人，一定是你的妈妈。今天母亲节，不要吝啬对这个世界上最爱你的人说一句：妈妈，我爱你。
                                    </li>
                                </ul>
                                <ul class="tab-pane" id="cardPane01">
                                    <li data-popover="true" data-content="遇到你我感到很幸福，但是我不能成为世界上最幸福的人，因为我们在一起，我要让你成为世界上最幸福的人。">
                                        1.遇到你我感到很幸福，但是我不能成为世界上最幸福的人，因为我们在一起，我要让你成为世界上最幸福的人。
                                    </li>
                                    <li data-popover="true" data-content="有些情感，无需多么华美，只是简单的遇见，简单的想念，哪怕它只是简单到：拉着你的手，迎着风走！">
                                        2.有些情感，无需多么华美，只是简单的遇见，简单的想念，哪怕它只是简单到：拉着你的手，迎着风走！
                                    </li>
                                    <li data-popover="true" data-content="我多么希望，有一个门口，早晨，阳光照在草上，我们站着，扶着自己的门扇，门很低，但太阳是明亮的。草在结它的种子，风在摇它的叶子，我们站着，不说话，就十分美好。">
                                        3.我多么希望，有一个门口，早晨，阳光照在草上，我们站着，扶着自己的门扇，门很低，但太阳是明亮的。草在结它的种子，风在摇它的叶子，我们站着，不说话，就十分美好。
                                    </li>
                                    <li data-popover="true" data-content="如果世界上曾经有那个人出现过，其他人都会变成将就，而我，不愿意将就。没遇到爱时，它是一个遥不可及的幻梦，遇到爱之后，它是一份可以被触碰的美好，不善言辞的我，爱上了你后，突然有很多话想说给你听..">
                                        4.如果世界上曾经有那个人出现过，其他人都会变成将就，而我，不愿意将就。没遇到爱时，它是一个遥不可及的幻梦，遇到爱之后，它是一份可以被触碰的美好，不善言辞的我，爱上了你后，突然有很多话想说给你听..
                                    </li>
                                    <li data-popover="true" data-content="我还是喜欢你，就像风追随云，我好想追到你，又怕吹散了你，春风十里，不如你。">
                                        5.我还是喜欢你，就像风追随云，我好想追到你，又怕吹散了你，春风十里，不如你。
                                    </li>
                                    <li data-popover="true" data-content="亲爱的：在这特别的日子，我只能用心去默默地想你、爱你。只想告诉你：永远深爱着你，希望你每年的今天都能过一个快乐的生日。">
                                        6.亲爱的：在这特别的日子，我只能用心去默默地想你、爱你。只想告诉你：永远深爱着你，希望你每年的今天都能过一个快乐的生日。
                                    </li>
                                    <li data-popover="true" data-content="为你的幸福而高兴，并且我愿付出一切让你更幸福。任何时候为爱你付出的一切都不是白白浪费。">
                                        7.为你的幸福而高兴，并且我愿付出一切让你更幸福。任何时候为爱你付出的一切都不是白白浪费。
                                    </li>
                                    <li data-popover="true" data-content="爱你是我一生无悔的决定，漫天星星都是我注视你的眼睛。无论结局如何，我都知道：此生最爱是你！">
                                        8.爱你是我一生无悔的决定，漫天星星都是我注视你的眼睛。无论结局如何，我都知道：此生最爱是你！
                                    </li>
                                    <li data-popover="true" data-content="时间会慢慢地让你了解，一个外表很冷漠又很怕羞的人，他的心却充满了对你的爱。">
                                        9.时间会慢慢地让你了解，一个外表很冷漠又很怕羞的人，他的心却充满了对你的爱。
                                    </li>
                                    <li data-popover="true" data-content="我的错误，划破了你的心。如今，我用我真挚的爱弥补你的伤口，请接受我的诚意。">
                                        10.我的错误，划破了你的心。如今，我用我真挚的爱弥补你的伤口，请接受我的诚意。
                                    </li>
                                </ul>
                                <ul class="tab-pane" id="cardPane02">
                                    <li data-popover="true" data-content="一切的不顺心都是纸老虎！希望你开心！">
                                        1.一切的不顺心都是纸老虎！希望你开心！
                                    </li>
                                    <li data-popover="true" data-content="不管世界尽头多寂寞，你的身边一定有我 ">
                                        2.不管世界尽头多寂寞，你的身边一定有我 
                                    </li>
                                    <li data-popover="true" data-content="不求同年同月同日生，但求同年同月同日疯 ">
                                        3.不求同年同月同日生，但求同年同月同日疯 
                                    </li>
                                    <li data-popover="true" data-content="最深的爱，总是风雨兼程；最浓的情，总是冷暖与共；最懂的人，才是最暖的伴。朋友，感恩有你。">
                                        4.最深的爱，总是风雨兼程；最浓的情，总是冷暖与共；最懂的人，才是最暖的伴。朋友，感恩有你。
                                    </li>
                                    <li data-popover="true" data-content="不是所有人都能掏心掏肺，不是所有的路过都是风景，不是所有的擦肩都是过客。但无论是对朋友还是爱人，只要是在乎我的，我都会加倍珍惜！">
                                        5.不是所有人都能掏心掏肺，不是所有的路过都是风景，不是所有的擦肩都是过客。但无论是对朋友还是爱人，只要是在乎我的，我都会加倍珍惜！
                                    </li>
                                    <li data-popover="true" data-content="吾在茫茫人海遇见了你，能成为知己，得知，我的幸运！">
                                        6.吾在茫茫人海遇见了你，能成为知己，得知，我的幸运！
                                    </li>
                                    <li data-popover="true" data-content="朋友就是那种不需要时刻想起，永远也不会忘记的人，当我需要的时候，还没有讲，你已来到我的身边。不过有你的做伴使我不再感到渺小和孤独。">
                                        7.朋友就是那种不需要时刻想起，永远也不会忘记的人，当我需要的时候，还没有讲，你已来到我的身边。不过有你的做伴使我不再感到渺小和孤独。
                                    </li>
                                    <li data-popover="true" data-content="无私无邪无猜无疑的友情无价，你是我买不到的奢华 ">
                                        8.无私无邪无猜无疑的友情无价，你是我买不到的奢华 
                                    </li>
                                    <li data-popover="true" data-content="人逢知己千杯少，难得在漫漫人生路上能认识你，在一起走过的日子，非常的感谢你给我的帮助，我始终不能忘记我们友谊，不能忘记我们在一起的点点滴滴，很想说有你真好，祝福你，我的朋友。">
                                        9.人逢知己千杯少，难得在漫漫人生路上能认识你，在一起走过的日子，非常的感谢你给我的帮助，我始终不能忘记我们友谊，不能忘记我们在一起的点点滴滴，很想说有你真好，祝福你，我的朋友。
                                    </li>
                                    <li data-popover="true" data-content="这些日子你过得还好吗？也许忙碌改变了我们的生活，但我永远珍惜我们的情谊。">
                                        10.这些日子你过得还好吗？也许忙碌改变了我们的生活，但我永远珍惜我们的情谊。
                                    </li>
                                </ul>
                                <ul class="tab-pane" id="cardPane03">
                                    <li data-popover="true" data-content="引一缕清风，为妈妈带去轻松；采一缕阳光，为妈妈送去芬芳；掬一捧清水，为妈妈消去疲惫；送一束鲜花，为妈妈奉上祝福。祝妈妈生日快乐！">
                                        1.引一缕清风，为妈妈带去轻松；采一缕阳光，为妈妈送去芬芳；掬一捧清水，为妈妈消去疲惫；送一束鲜花，为妈妈奉上祝福。祝妈妈生日快乐！
                                    </li>
                                    <li data-popover="true" data-content="美丽动人可爱迷人的妈妈：生日快乐！青春永驻！虽然不能陪伴在你身边，我的心一直陪伴着你，我爱你，妈妈。">
                                        2.美丽动人可爱迷人的妈妈：生日快乐！青春永驻！虽然不能陪伴在你身边，我的心一直陪伴着你，我爱你，妈妈。
                                    </li>
                                    <li data-popover="true" data-content="“洗衣做饭忙不完，每日忙碌不着闲，历经风霜添白发，勤劳持家不知烦”。作为儿子女儿的我们，深知您每天的辛苦忙碌，但作为儿子女儿的我们，同样要给您幸福，祝您生日快乐，幸福万年长。">
                                        3.“洗衣做饭忙不完，每日忙碌不着闲，历经风霜添白发，勤劳持家不知烦”。作为儿子女儿的我们，深知您每天的辛苦忙碌，但作为儿子女儿的我们，同样要给您幸福，祝您生日快乐，幸福万年长。
                                    </li>
                                    <li data-popover="true" data-content="从一个城市到另一个城市，只有靠自己努力。学会长大，学会承受，学会哭过之后，还可以微笑地拥抱爸爸妈妈。因为你们一直是我的守护神！让我走到哪里都不会怕！">
                                        4.从一个城市到另一个城市，只有靠自己努力。学会长大，学会承受，学会哭过之后，还可以微笑地拥抱爸爸妈妈。因为你们一直是我的守护神！让我走到哪里都不会怕！
                                    </li>
                                    <li data-popover="true" data-content="谢谢您做的一切，双手撑起我们的家，总是竭尽所有把最好的给我们。不要再为我们而担心啦，你牵挂的孩子长大了。">
                                        5.谢谢您做的一切，双手撑起我们的家，总是竭尽所有把最好的给我们。不要再为我们而担心啦，你牵挂的孩子长大了。
                                    </li>
                                    <li data-popover="true" data-content="岁月总是越来越短，生日总是越来越快。留不住的时光使您走向人生的至善，留得住的贺卡捎去的是我深深的怀念。真心希望晚辈的祝福带给您欢乐！">
                                        6.岁月总是越来越短，生日总是越来越快。留不住的时光使您走向人生的至善，留得住的贺卡捎去的是我深深的怀念。真心希望晚辈的祝福带给您欢乐！
                                    </li>
                                    <li data-popover="true" data-content="听说神无法无处不在，所以创造了妈妈。即使到了妈妈的年龄，妈妈的妈妈仍然是妈妈的守护神。妈妈这个词，只是叫一叫，也觉得喉间哽咽。妈妈，最有力量的名字；妈妈，祝你永远年轻。">
                                        7.听说神无法无处不在，所以创造了妈妈。即使到了妈妈的年龄，妈妈的妈妈仍然是妈妈的守护神。妈妈这个词，只是叫一叫，也觉得喉间哽咽。妈妈，最有力量的名字；妈妈，祝你永远年轻。
                                    </li>
                                    <li data-popover="true" data-content="父爱如山，父爱无言，您总是微笑着担起了整个家庭。在我心中，您是全天下最好的爸爸。">
                                        8.父爱如山，父爱无言，您总是微笑着担起了整个家庭。在我心中，您是全天下最好的爸爸。
                                    </li>
                                    <li data-popover="true" data-content="您用优美的年轮，编成一册散发油墨清香的日历；年年，我都会在日历的这一天上，用深情的想念，祝福您的生日。">
                                        9.您用优美的年轮，编成一册散发油墨清香的日历；年年，我都会在日历的这一天上，用深情的想念，祝福您的生日。
                                    </li>
                                    <li data-popover="true" data-content="亲爱的妈妈：您曾用您坚实的臂弯为我撑起一片蓝天；而今，我也要用我日益丰满的羽翼为您遮挡风雨。妈妈，我永远爱您！生日快乐！祝我的美女妈妈越来越青春，身体健康，瘦成闪电，未来的我可以每个假期带你出去纵横~ ">
                                        10.亲爱的妈妈：您曾用您坚实的臂弯为我撑起一片蓝天；而今，我也要用我日益丰满的羽翼为您遮挡风雨。妈妈，我永远爱您！生日快乐！祝我的美女妈妈越来越青春，身体健康，瘦成闪电，未来的我可以每个假期带你出去纵横~ 
                                    </li>
                                </ul>
                            </div>
                    </div>
                </div>
                <!-- 贺卡内容 End -->
                <!-- 支付方式 -->
                <div class="order-item">
                    <div class="item-hd">
                        <h5>支付方式</h5>
                    </div>
                    <div class="item-bd">
                        <ul class="selects-list" id="payWay">
                                <li class="active" id="payway0" data-popover="true" data-content="支持：支付宝、微信扫码、财付通、易宝支付、PayPal；以及工行、农行、建行、中行、招行、交行等10多家主要银行直付。">网上支付<i class="ico ico-pop"></i><i class="ico ico-check"></i></li>

                            <li id="payway3" data-popover="true" data-content="不与其他优惠同时使用，以商品购买价计价。<br /><a href='/help/lipinka_check.htm' target='_blank'><u>验证卡有效性</u></a>">礼品卡支付<i class="ico ico-check"></i><i class="ico ico-pop"></i></li>
                            <!-- <li id="payway2" data-popover="true" data-content="支持40多个主要城市市区提供上门收款服务（包括全部直辖市、省会城市、以及深圳、珠海、东莞、中山、厦门、苏州、大连、青岛、无锡、宁波、温州、桂林），加收服务费10元。<a href='/help/payment_door.htm' target='_blank'>详情 >></a>
                            ">上门收款<i class="ico ico-check"></i><i class="ico ico-pop"></i></li> -->
                            
                            <span id="shangmen" class="checkbox-wrap form-inline" style="display: none;">上门收款地址：<input name="address" id="address" value="" class="form-control input-sm" placeholder="如不是订购人请同时注明联系人及手机" style="width: 230px;" maxlength="120" type="text"></span>
                        </ul>
                    </div>
                </div>
                    <input name="pays" id="pays" value="网上支付" type="hidden">
                <!-- 支付方式 End -->
                <!-- 特殊要求 -->
                <div class="checkbox-wrap form-inline" style="margin-bottom: 6px;">
                    <div class="checkbox">
                        <label>
                            <input class="special-checkbox" id="tsYaoQiu" name="tsYaoQiu" type="checkbox"> 备注
                        </label>
                    </div>
                    <div class="form-group special-form hidden">
                        <input value="" class="form-control input-sm" id="quest" name="quest" placeholder="选填，如有其他要求请注明,我们尽量满足，120字以内:)" style="width: 500px;" maxlength="120" type="text">
                    </div>
                </div>
                <!-- 特殊要求 End -->
                <!-- 我要发票 -->
                    <div class="checkbox-wrap form-inline">
                        <div class="checkbox">
                            <label>
                                <input class="invoice-checkbox" name="ShowFInfo1" id="ShowFInfo1" value="1" type="checkbox"> 我要发票
                            </label>
                        </div>
                        <div class="invoice-info hidden" id="fptextinfo">
                            <span id="fpleixing"></span>
                            <span id="fptaitou"></span><span id="fptaxnumber"></span>
                            <span id="fpshr"></span><span id="fptel"></span>
                            <span id="fpaddress"></span><span id="fpedit"></span>
                        </div>
                        <div class="invoice-form hidden" id="fpinputinfo">
                            <div class="invoice-hd" style="line-height: 22px;">
                                <!--<span style="color: red;">春节期间2.6-2.25快递停止收件, 发票将于2.25开始陆续寄出</span><br />-->
                                <!-- 发票将于付款后1-3个工作日内开具，<span style="color:red;">免费快递寄出</span>。<br> -->
                                <!-- 五个最大的节日前一周，改为： -->
                                发票将于付款后1-7个工作日内开具，<span style="color: red;">免费快递寄出</span>。<br>
                                <span style="color: red;">
                                    普通发票
                                </span>，内容：<span style="color: red;">服务费</span>，如有其他要求，请联系客服
                                <input name="FPSendWay" value="快递" id="FPSendWay" type="hidden">
                            </div>
                            <div class="invoice-bd">
                                <p>
                                        <label id="danwei"><input name="tax" style="position: relative; top: 2px;" value="0" checked="checked" type="radio">单位</label>
                                        <label id="geren"><input name="tax" style="position: relative; top: 2px; margin-left: 5px;" value="1" type="radio">个人</label>
                                    <input name="fptype" id="fptype" value="单位" size="30" maxlength="30" type="hidden">
                                    <input name="yfptype" id="yfptype" value="单位" size="30" maxlength="30" type="hidden">
                                </p>
                                <p class="error-info" style="display: none; margin: 0px 0px 10px;"><span class="text-primary"></span></p>
                                <div class="form-group">
                                    <input name="fp_posttype" value="快递" id="fp_posttype_2" type="hidden">
                                    <input class="form-control input-sm" id="fp_info01" name="fp_info01" value="" placeholder="单位全称" style="width: 345px;" maxlength="50" type="text"><input name="yfp_info01" id="yfp_info01" value="" size="30" maxlength="25" type="hidden">
                                </div>
                                <div class="form-group">
                                    <input value="" class="form-control input-sm" id="fp_info04" name="fp_info04" placeholder="纳税人识别号" style="width: 345px;" maxlength="30" type="text">
                                    <input name="yfp_info04" id="yfp_info04" value="" size="30" maxlength="30" type="hidden">
                                </div>
                                <div class="form-group">
                                    <div class="form-inline" style="width: 500px;">
                                        <input class="form-control input-sm" placeholder="收件人" value="" name="fp_info03" id="fp_info03" style="width: 170px; float: left; margin-right: 5px;" maxlength="50" type="text">
                                        <input name="yfp_info03" id="yfp_info03" value="" size="30" maxlength="25" type="hidden">
                                        <input class="form-control input-sm" name="fp_info02a" id="fp_info02a" value="" placeholder="手机或电话" style="width: 170px;" maxlength="25" type="text">
                                        <input name="yfp_info02a" id="yfp_info02a" value="" size="30" maxlength="25" type="hidden">
                                    </div>
                                </div>
                                <div class="form-group" style="margin-bottom: 8px;">
                                    <input name="fp_info02" id="fp_info02" value="" class="form-control input-sm" placeholder="详细地址（请完整填写省、市、区等信息，以保证快递顺利送达）" style="width: 500px;" maxlength="122" type="text"><input name="yfp_info02" id="yfp_info02" value="" size="30" maxlength="25" type="hidden">
                                </div>

                                <div class="form-group" style="width: 500px; margin-bottom: 0px;">
                                    <label><input name="FPDefault" id="FPDefault" value="1" checked="checked" style="margin-right: 5px;" type="checkbox">存为常用发票信息</label>
                                </div>
                                <div class="form-group"><button type="button" class="btn btn-default btn-tinge" onclick="SaveFPInfo()">保存发票信息</button></div>
                            </div>
                        </div>
                    </div>
                <!-- 我要发票 End -->

                <!-- 我有优惠券 -->
                <div class="checkbox-wrap form-inline" style="display: block;">
                    <div class="checkbox">
                        <label>
                            <input class="voucher-checkbox" id="aIsUseLiquan" name="aIsUseLiquan" value="1" type="checkbox"> 我有优惠券
                        </label>
                            <a id="canUseCouponCnt" style="border-bottom: 1px solid rgb(255, 102, 0); display: none;" href="javascript:void(0)" onclick="UseCouponFrame()">可用0张</a>

                    </div>
                    <div id="divlqcode" class="form-group voucher-form hidden">
                                <input class="form-control input-sm" name="lq_code" id="lq_code" value="" placeholder="请输入优惠券号" style="width: 200px;" type="text">

                        <input name="lq3_sum" id="lq3_sum" value="0" type="hidden">
                    </div>
                </div>
                <!-- 我有优惠券 End -->
            </div>
        </div>
        <!-- 填写订单信息 End -->
        <!-- 核对购物清单 -->
        <div class="cart-panel check">
            <div class="hd"><h3>核对购物清单</h3></div>
            <div class="bd" id="Products">
                        <ul class="order-list">
                            <li class="img-box"><a href="https://www.hua.com/product/9012009.html" target="_top"><img src="../../assets/Images/9012009.jpg_80x87.jpg" height="56" width="50"></a></li>
                            <li class="product">
                                <a href="https://www.hua.com/product/9012009.html">
                                    <span class="product-title">忘情巴黎一33枝红玫瑰</span>
                                </a>
                                <div class="price">
                                    <span class="price-sign">¥</span>
                                    <span class="price-num" id="pro9012009">298</span>
                                </div>
                                x1
                            </li>
                        </ul>
                        <ul class="order-list">
                            <li class="img-box"><a href="https://www.hua.com/product/9012089.html" target="_top"><img src="../../assets/Images/9012089.jpg_80x87.jpg" height="56" width="50"></a></li>
                            <li class="product">
                                <a href="https://www.hua.com/product/9012089.html">
                                    <span class="product-title">爱在心头一玫瑰50枝：戴安娜粉玫瑰19枝，红玫瑰31枝</span>
                                </a>
                                <div class="price">
                                    <span class="price-sign">¥</span>
                                    <span class="price-num" id="pro9012089">369</span>
                                </div>
                                x1
                            </li>
                        </ul>

            </div>
        </div>
        <!-- 核对购物清单 End -->
        <!-- 提交订单 -->
        <div class="submit-order">
            <div class="stat">
                2件商品，总商品金额：
                <div class="price">
                    <span class="price-sign">¥</span>
                    <span class="price-num" id="product_money">667</span>
                </div>
            </div>
            <!-- 关爱通用户显示优惠金额 start -->
            <!-- 关爱通用户显示优惠金额 End -->
            <div class="stat">
                配送费：
                <div class="price">
                    <span class="price-sign">¥</span>
                    <span class="price-num" id="i_spend_fee">0</span>
                </div>
            </div>
            <div class="stat" id="show_quan" style="display: none;">
                优惠券抵扣：
                <div class="price">
                    <span class="price-sign">¥</span>
                    <span class="price-num" id="quan_num">0</span>
                </div>
            </div>
            <div class="stat" id="show_confirmTime" style="display: none;">
                定时服务费：
                <div class="price">
                    <span class="price-sign">¥</span>
                    <span class="price-num" id="comfirmTime_num">0</span>
                </div>
            </div>
            <div class="stat" id="show_todoors" style="display: none;">
                上门收款费：
                <div class="price">
                    <span class="price-sign">¥</span>
                    <span class="price-num" id="todoors_num">0</span>
                </div>
            </div>
            <div class="stat total">
                实付款：
                <div class="price">
                    <span class="price-sign">¥</span>
                    <span class="price-num" id="order_total_money">667</span>
                </div>
            </div>
            <input name="tt_flag" id="tt_flag" value="1" type="hidden">
            <input name="totalMoney" id="totalMoney" value="667" type="hidden">
            <input name="GuanAiTongMoney" id="GuanAiTongMoney" value="0" type="hidden">
            <input name="sign" id="sign" value="N1DQlDcurq1Mo4Mx" type="hidden">
            <button class="btn btn-primary btn-lg" type="button" onclick="return CheckForm()" id="DoSubmit">提交订单</button>

            <button class="btn btn-primary btn-lg" type="button" id="Submiting" disabled="disabled" style="display: none;">提交中,请等待...</button>

            <div class="address">
                配送至： <span id="send_address">山西 太原市 小店区 黄河小学18号</span><br>
                收货人：<span id="receiver">zu 17671751371</span>
            </div>
        </div>
        <!-- 提交订单 End -->
    </div>
</form>
<!-- 弹出窗口-->
<div class="modal fade com-modal" id="consigneeModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="attNotice">新增收货人信息</h4>
            </div>
            <div class="modal-body">
                <iframe src="index_2.html" id="attPage" frameborder="0" height="340" width="100%"></iframe>
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
                    <a href="https://www.hua.com/productpj/"><p>最近评价<font id="pjCount">248293</font>条</p></a>
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
        <a href="https://www.hua.com/">首页</a> <b>|</b> <a href="https://www.hua.com/profile/about.htm" target="_top">关于我们</a> <b>|</b> <a href="https://www.hua.com/profile/media.html" target="_top">媒体报道</a> <b>|</b> <a href="https://www.hua.com/profile/contact.htm" target="_top">联系方式</a> <b>|</b> <a href="https://www.hua.com/qiyetuangou/" target="_top">企业团购</a> <b>|</b> <a href="https://www.hua.com/liansuo/" target="_top">花店入驻</a> <b>|</b> <a href="https://www.hua.com/member/payment/balancefill" target="_top">在线补款</a> <b>|</b> <a class="last-child" href="https://www.hua.com/profile/why_choose_us.htm" target="_top">为什么选择中国鲜花礼品网</a>
    </div>
    <!-- 尾部导航 End -->
    <!-- 通用尾部 -->
    <footer>
        <div class="auth">
            <!-- <span style="margin-right:8px;">
                <script src="http://kxlogo.knet.cn/seallogo.dll?sn=e15041744030058395oqbo000000&amp;size=4"></script>
            </span> -->
            <a href="https://ss.knet.cn/verifyseal.dll?sn=e15041744030058395oqbo000000&amp;ct=df&amp;a=1&amp;pa=0.8817607406526804" target="_top"><img style="height: 40px;" src="../../assets/Images/cxwz.png"></a>
            <a href="https://search.szfw.org/cert/l/CX20130306002238002312" target="_top"><img src="../../assets/Images/cxwz.gif" height="40" width="112"></a>
            <a href="http://www.anquan.org/authenticate/cert/?site=www.hua.com&amp;at=realname" rel="nofollow" target="_top"><img src="../../assets/Images/smyz.gif" height="40" width="106"></a>
            <img src="../../assets/Images/slogan.png" height="50" width="212">
            <a href="https://www.hua.com/member/payment/fillbyalipay?order_no=&amp;total_fee=" rel="nofollow" target="_top"><img src="../../assets/Images/zfb.gif" height="49" width="96"></a>
            <a href="https://www.hua.com/profile/news_20111110.htm" target="_top"><img src="../../assets/Images/100.jpg" height="49" width="150"></a>
        </div>
        <p><a href="https://www.hua.com/profile/ChinaFlowerAssociation.htm" rel="nofollow" target="_top" title="中国花卉协会会员">中国花卉协会会员</a> <a href="https://www.hua.com/profile/chinaECA.htm" rel="nofollow" target="_top">中国电子商务协会会员</a> ICP经营许可证：<a href="https://www.hua.com/profile/ICP.htm" rel="nofollow" target="_top">粤B2-20050744</a> <b>|</b> <a href="http://www.miibeian.gov.cn/" rel="nofollow" target="_top">粤ICP备09171662号</a> Copyright © 2005-2018</p>
        <p>中国鲜花礼品网 <a href="https://www.hua.com/">www.hua.com</a> 中国鲜花网领先品牌，鲜花速递专家！</p>
    </footer>
    <!-- 通用尾部 End -->
    
    
    
    
    

    
    

    <!-- Global site tag (gtag.js) - Google Analytics -->
    
    
    <!-- Google Tag Manager (noscript) -->
    
    <!-- End Google Tag Manager (noscript) -->

</body>
</html>
