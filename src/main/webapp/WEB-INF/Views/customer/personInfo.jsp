<%@ page language="java" pageEncoding="utf-8" contentType="text/html;charset=UTF-8" %>
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
    <link rel="icon" href="personInfo/favicon.ico" mce_href="/favicon.ico" type="image/x-icon">
    <!--[if lt IE 9]>
        <script src="//img02.hua.com/pc/assets/js/html5shiv.min.js"></script>
    <![endif]-->
    <!-- Google Tag Manager -->
    
    <!-- End Google Tag Manager -->

<link rel="stylesheet" type="text/css" href="../assets/Css/personInfo.css" media="all">
</head>
<body class="home">
<!-- 顶部导航 -->

<div class="site-nav">
    <div class="container">

        <ul class="site-nav-l">
            <li class="menu">
                <a href="https://www.hua.com/" onclick="addfavorite();return false;"><span class="ico ico-star"></span>收藏鲜花网(hua.com)</a>
            </li>
            <li class="menu dropdown">
                <a aria-expanded="false" href="javascript:void(0)" data-hover="dropdown" data-delay="0"><span class="ico ico-weixin"></span>关注微信</a>
                <div class="dropdown-menu dropdown-weixin">
                    <img src="../assets/Images/wechat_qrcode.jpg" height="124" width="124">
                    <p>扫码关注<br>回复"礼物" 更多惊喜！</p>
                </div>
            </li>
            <li class="menu dropdown">
                <a href="https://www.hua.com/mobile/" data-hover="dropdown" data-delay="0" target="_top"><span class="ico ico-mobile"></span>花礼网app</a>
                <div class="dropdown-menu dropdown-weixin">
                    <img src="../assets/Images/app_qrcode.jpg" height="124" width="124">
                    <p>新人专享100元APP礼包</p>
                </div>
            </li>
        </ul>
        <ul class="site-nav-r">
            <!--登陆状态信息显示start-->
            <li class="menu login" id="LoginInfo">${sessionScope.customer}<a href="https://www.hua.com/Passport/Login/Loginout" title="退出">退出</a></li>
            <!--登陆状态信息显示end-->
            <li class="site-nav-pipe">|</li>
            <li class="menu">
                <a href="https://www.hua.com/help/ordercx/" rel="nofollow" target="_top">订单查询</a>
            </li>
            <li class="site-nav-pipe">|</li>
            <!--我的花礼信息显示start-->
            <li class="menu dropdown">
                <a href="https://www.hua.com/member/" rel="nofollow" data-hover="dropdown" data-delay="0" target="_top">我的花礼</a>
            </li><!--我的花礼信息显示end-->
            <li class="site-nav-pipe">|</li>
            <li class="menu dropdown">
                <a href="https://www.hua.com/help/" data-hover="dropdown" data-delay="0" target="_top">客户服务<span class="glyphicon glyphicon-triangle-bottom"></span></a>
                <div class="dropdown-menu dropdown-service">
                    <a href="https://www.hua.com/member/payment/balancefill" target="_top">在线付款</a>
                    <a href="https://www.hua.com/help/" target="_top">帮助中心</a>
                    <a href="https://www.hua.com/help/afterservice.htm" target="_top">售后服务</a>
                    <a href="https://www.hua.com/help/sendRange.htm" target="_top">配送范围</a>
                    <a href="https://www.hua.com/chat/" target="_top">留言反馈</a>
                </div>
            </li>
            <li class="site-nav-pipe">|</li>
            <!--购物车信息显示start-->
            <li class="menu dropdown">
                <a href="https://www.hua.com/shopping/showcart/" data-hover="dropdown" data-delay="0" rel="nofollow" target="_top"><span class="ico ico-cart"></span>购物车<span class="text-primary" id="gwcCount">(0)</span><span class="glyphicon glyphicon-triangle-bottom"></span></a>
                <div class="dropdown-menu dropdown-cart" id="CartInfo"><div class="empty">您的购物车中没有商品，<a href="https://www.hua.com/">先去选购吧</a>！</div></div>
            </li><!--购物车信息显示end-->
            <li class="site-nav-pipe">|</li>
            <li class="menu slogan">
                中国鲜花礼品网: 会员中心
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
        <div class="member-base-l">
            <ul class="mb-tab">
                <li class="active"><a href="https://www.hua.com/Member/AccountSetting/PersonInfoManage">基本信息</a></li>
                <li><a href="https://www.hua.com/Member/AccountSetting/HeadPicUpLoad?memberid=2559979">头像照片</a></li>
            </ul>

            <form class="form-horizontal" action="https://www.hua.com/Member/AccountSetting/PersonInfoSave" method="post" id="theForm">
                <div class="form-group form-group-sm">
                    <label for="inputName" class="col-xs-2 control-label">* 真实姓名:</label>
                    <div class="col-xs-4">
                        <input class="form-control" id="inputName" name="realname" maxlength="40" value="张洋" type="text">
                    </div>
                </div>

                <input name="id" value="2559979" type="hidden">

                <div class="form-group form-group-sm">
                    <label class="col-xs-2 control-label">* 性别:</label>
                    <div class="col-xs-10">
                        <label class="radio-inline">
                            <input name="sex" id="sex1" value="男" type="radio"> 男
                        </label>
                        <label class="radio-inline">
                            <input name="sex" id="sex2" value="女" type="radio"> 女
                        </label>
                        <label class="radio-inline">
                            <input name="sex" id="sex3" value="密" type="radio"> 保密
                        </label>
                    </div>
                </div>
                <div class="form-group form-group-sm">
                    <label class="col-xs-2 control-label">生日:</label>
                    <div class="col-xs-6" id="birthday_container">
                        <select class="form-control" style="width: 90px; display: inline-block;" name="year" id="year"><option selected="selected" value="">年</option><option value="2018">2018</option><option value="2017">2017</option><option value="2016">2016</option><option value="2015">2015</option><option value="2014">2014</option><option value="2013">2013</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option><option value="1968">1968</option><option value="1967">1967</option><option value="1966">1966</option><option value="1965">1965</option><option value="1964">1964</option><option value="1963">1963</option><option value="1962">1962</option><option value="1961">1961</option><option value="1960">1960</option><option value="1959">1959</option><option value="1958">1958</option><option value="1957">1957</option><option value="1956">1956</option><option value="1955">1955</option><option value="1954">1954</option><option value="1953">1953</option><option value="1952">1952</option><option value="1951">1951</option><option value="1950">1950</option><option value="1949">1949</option><option value="1948">1948</option></select>
                        <select class="form-control" style="width: 70px; display: inline-block;" name="month" id="month"><option selected="selected" value="">月</option><option value="01">01</option><option value="02">02</option><option value="03">03</option><option value="04">04</option><option value="05">05</option><option value="06">06</option><option value="07">07</option><option value="08">08</option><option value="09">09</option><option value="10">10</option><option value="11">11</option><option value="12">12</option></select>
                        <select class="form-control" style="width: 70px; display: inline-block;" name="day" id="day"><option selected="selected" value="">日</option><option value="01">01</option><option value="02">02</option><option value="03">03</option><option value="04">04</option><option value="05">05</option><option value="06">06</option><option value="07">07</option><option value="08">08</option><option value="09">09</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select>
                    </div>

                    <div class="col-xs-3">
                        <p class="form-control-static text-primary">填写有惊喜哦！</p>
                    </div>
                </div>
                <div class="form-group form-group-sm">
                    <label class="col-xs-2 control-label">邮箱:</label>
                    <div class="col-xs-10">
                        <p class="form-control-static">846965599@qq.com <input name="email" value="846965599@qq.com" type="hidden"> </p>
                    </div>
                </div>
                                        <input name="mobile" value="17671751371" id="inputMobile" type="hidden">
                        <div class="form-group form-group-sm">
                            <label for="inputMobile" class="col-xs-2 control-label">* 手机:</label>
                            <div class="col-xs-8">
                                <p class="form-control-static">
                                    176*****371<a href="https://www.hua.com/Member/AccountSetting/EditPhoneAuth" class="btn btn-default btn-sm">修改</a> <span class="text-muted">已验证</span>
                                </p>
                            </div>
                        </div>

                <div class="form-group form-group-sm">
                    <label for="inputPhone" class="col-xs-2 control-label">或电话:</label>
                    <div class="col-xs-4">
                        <input value="" class="form-control" id="inputPhone" name="tel" size="25" maxlength="30" type="text">
                    </div>
                </div>
                <div class="form-group form-group-sm">
                    <label class="col-xs-2 control-label">地址:</label>
                    <div class="col-xs-10">
                        <select class="form-control" style="width: 100px; display: inline-block;" name="state" id="cmbProvince"><option value="北京">北京</option><option value="上海">上海</option><option value="天津">天津</option><option value="重庆">重庆</option><option value="四川">四川</option><option value="贵州">贵州</option><option value="云南">云南</option><option value="西藏">西藏</option><option value="河南">河南</option><option value="湖北">湖北</option><option value="湖南">湖南</option><option value="广东">广东</option><option value="广西">广西</option><option value="陕西">陕西</option><option value="甘肃">甘肃</option><option value="青海">青海</option><option value="宁夏">宁夏</option><option value="新疆">新疆</option><option value="河北">河北</option><option value="山西">山西</option><option value="内蒙古">内蒙古</option><option value="江苏">江苏</option><option value="浙江">浙江</option><option value="安徽">安徽</option><option value="福建">福建</option><option value="江西">江西</option><option value="山东">山东</option><option value="辽宁">辽宁</option><option value="吉林">吉林</option><option value="黑龙江">黑龙江</option><option value="海南">海南</option><option value="台湾">台湾</option><option value="香港">香港</option><option value="澳门">澳门</option></select>
                        省
                        <select class="form-control" style="width: 100px; display: inline-block;" name="city" id="cmbCity"><option value="市辖区">市辖区</option><option value="县">县</option></select>
                        市
                        <select class="form-control" style="width: 100px; display: none;" name="cmbArea" id="cmbArea"><option value="东城区">东城区</option><option value="西城区">西城区</option><option value="崇文区">崇文区</option><option value="宣武区">宣武区</option><option value="朝阳区">朝阳区</option><option value="丰台区">丰台区</option><option value="石景山区">石景山区</option><option value="海淀区">海淀区</option><option value="门头沟区">门头沟区</option><option value="房山区">房山区</option><option value="通州区">通州区</option><option value="顺义区">顺义区</option><option value="昌平区">昌平区</option><option value="大兴区">大兴区</option><option value="怀柔区">怀柔区</option><option value="平谷区">平谷区</option></select>
                        <!--区（不显示，预留）-->
                    </div>
                </div>
                <div class="form-group form-group-sm">
                    <label class="col-xs-2 control-label"> </label>
                    <div class="col-xs-8">
                        <input value="" class="form-control" id="inputAddress" name="Address" type="text">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-xs-offset-2 col-xs-10">
                        <button type="button" class="btn btn-default btn-sm btn-submit" onclick="checkFrom()">提交</button>
                    </div>
                </div>
            </form>
        </div>

        <div class="member-base-r">
            <div class="member-info">
                <div class="user">
                    <div class="avatar">
                        <a href="#">
                            <img src="personInfo/avatar_default_06.jpg" alt="" height="92" width="92">
                        </a>
                    </div>
                    <p>
                        用户名：
                        <a href="#">846965599@qq.com</a>
                       <br>
                        <span class="ico ico-member"></span>
                            普通会员
                        <br>
                        会员积分：0
                    </p>
                </div>
            </div>
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
                            <li id="myEvaluationItem"><a href="https://www.hua.com/Member/Order/ReviewList">我的评价</a></li>
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
                            <li class="active" id="personInfoItem"><a href="https://www.hua.com/Member/AccountSetting/PersonInfoManage">个人信息</a></li>
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
</body>
</html>
