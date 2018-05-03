<%@ page language="java" pageEncoding="utf-8" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>会员中心-中国鲜花礼品网</title>
    <meta name="description" content="会员中心-中国鲜花礼品网,专业提供鲜花礼品网上购物,全国连锁网上花店,鲜花蛋糕礼品3小时送达1000多城市鲜花网,选中国鲜花礼品网(花礼网)-中国鲜花网领先品牌,Hua.com专注鲜花速递服务10年,销量稳居鲜花礼品类网站首位！鲜花网提供24小时订鲜花，同城送花、异地送花服务,网上订花后最快3小时即可将鲜花快递上门,送花网站覆盖中国900多城市！">
    <meta name="keywords" content="会员中心，鲜花速递">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit|ie-comp">
    <link rel="icon" href="index/favicon.ico" mce_href="/favicon.ico" type="image/x-icon">
    <!--[if lt IE 9]>
        <script src="//img02.hua.com/pc/assets/js/html5shiv.min.js"></script>
    <![endif]-->
    <!-- Google Tag Manager -->
<link rel="stylesheet" type="text/css" href="../assets/Css/index.css" media="all">

    <script type="text/javascript" charset="utf-8" src="../assets/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="../assets/ueditor/ueditor.all.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="../assets/ueditor/lang/zh-cn/zh-cn.js"></script>
    <style type="text/css">
        td{
            padding-bottom: 20px;
        }
    </style>
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
        <div class="service">
            <span class="ico ico-phone"></span>400-889-8188
            <a href="https://www.hua.com/chat/" target="_top"><span class="ico ico-headset"></span>在线客服</a>
        </div>
    </header>
    <!-- 头部 End -->
    
<!-- 导航 -->
<nav class="common">
    <div class="container">
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
    <div class="box-border member-r" style="padding-left: 30px;padding-top: 30px">
        <form  id="add-flower" action="${pageContext.request.contextPath}/seller/doAddFlower" method="post" enctype="multipart/form-data">
            <input type="hidden" name="seller_id" value="${sessionScope.seller.id}">
            <table>
                <tr>
                    <td width="50px">商品名</td>
                    <td><input type="text" name="name" id="name"></td>
                </tr>
                <tr>
                    <td width="50px">定价</td>
                    <td><input type="text" name="price" id="price"></td>
                </tr>
                <tr>
                    <td width="50px">简介</td>
                    <td><input type="text" name="description" id="description"></td>
                </tr>
                <tr>
                    <td width="50px">用途</td>
                    <td>
                        <select name="usage_id" id="usage">
                            <c:forEach var="usage" items="${usages}">
                                <option value="${usage.id}">${usage.usage}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td width="50px">花材</td>
                    <td>
                        <select name="material_id" id="material">
                            <c:forEach var="material" items="${materials}">
                                <option value="${material.id}">${material.material}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td width="50px">类型</td>
                    <td>
                        <select name="type_id" id="type">
                            <c:forEach var="type" items="${types}">
                                <option value="${type.id}">${type.type}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td width="50px">图片</td>
                    <td><input type="file" name="image" id="image" onchange="javascript:setImagePreview()"></td>
                    <td><img id="preview" width=-1 height=-1 style="diplay:none" /></td>
                </tr>
                <tr>
                    <td width="50px">详情</td>
                    <td width="880px"><textarea name="detail" id="content"></textarea></td>
                </tr>
                <tr><td><button>提交</button></td></tr>
            </table>
        </form>
    </div>
</div>
        <div class="pull-left w210 r970" id="containerBody">
            <div class="box-border">
                <div class="hd"><b></b>会员中心</div>
                <ul class="bd">
                    <li class="active" id="memberCenterItem"><a href="https://www.hua.com/Member/MemberCenter/" style="font-size: 12px;"><span class="ico ico-member1"></span>会员首页</a></li>

                    <li>
                        <span class="ico ico-member5"></span>我的商品
                        <ul>
                            <li id=""><a href="${pageContext.request.contextPath}/seller/showAllFlowers">全部商品</a></li>
                            <li id=""><a href="${pageContext.request.contextPath}/seller/addFlower">新货上架</a></li>
                        </ul>
                    </li>
                    <li>
                        <span class="ico ico-member2"></span>订单信息
                        <ul>
                            <li id="myOrderItem"><a href="${pageContext.request.contextPath}/seller/showOrders">已售订单</a></li>
                            <li id="cancelOrderItem"><a href="">已取消订单</a></li>
                        </ul>
                    </li>
                    <li>
                        <span class="ico ico-member4"></span>账户设置
                        <ul>
                            <li id="personInfoItem"><a href="">个人信息</a></li>
                            <li id="changePwdItem"><a href="">密码设置</a></li>
                        </ul>
                    </li>
                    <li>
                        <span class="ico ico-member5"></span>付款设置
                        <ul>
                            <li id="myVirtualAccountItem"><a href="">我的虚拟账户</a></li>
                            <li id="myCouponItem"><a href="">账户提现</a></li>
                        </ul>
                    </li>
                    <li>
                        <span class="ico ico-member6"></span>客户服务
                        <ul>
                            <li id="guestMessageItem"><a href="">客服留言</a></li>
                            <li id="tsGuestMessageItem"><a href="">投诉留言</a></li>
                            <li id="chatItem"><a href="">在线客服</a></li>
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

<script type="text/javascript">
    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('content');
</script>
<script src="../assets/Scripts/jquery.js"></script>
<script src="../assets/Scripts/layer.js"></script>

<!--图片及时预览-->
<script type="text/javascript">
    function setImagePreview() {
        var docObj = document.getElementById("img");
        var imgObjPreview = document.getElementById("preview");
        if (docObj.files && docObj.files[0]) {
            //火狐下，直接设img属性
            imgObjPreview.style.display = 'block';
            imgObjPreview.style.width = '150px';
            imgObjPreview.style.display="inline-block";
            imgObjPreview.style.marginLeft="10px";
            //imgObjPreview.style.height = '120px';
            //imgObjPreview.src = docObj.files[0].getAsDataURL();
            //火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式
            imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
        } else {
            //IE下，使用滤镜
            docObj.select();
            var imgSrc = document.selection.createRange().text;
            var localImagId = document.getElementById("localImag");
            //必须设置初始大小
            localImagId.style.width = "50px";
            //localImagId.style.height = "200px";
            //图片异常的捕捉，防止用户修改后缀来伪造图片
            try {
                localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
                localImagId.filters
                    .item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
            } catch (e) {
                alert("您上传的图片格式不正确，请重新选择!");
                return false;
            }
            imgObjPreview.style.display = 'none';
            document.selection.empty();
        }
        return true;
    }
</script>
<script>
    function flowerAdd() {
        var formData = new FormData($("#add-flower")[0]);
        if(!$('#name').val()){
            alert("请输入花名!");
            return;
        }
        if(!$('#price').val()){
            alert("请输入价格！");
            return;
        }
        if(!$('#description').val()){
            alert("请输入简介!");
            return;
        }
        $.ajax({
            url: '/seller/addFlower' ,  /*这是处理文件上传的servlet*/
            type: 'POST',
            data: formData,
            dataType: 'json',
            //async: false,
            cache: false,
            contentType: false,
            processData: false,
            success: function (msg) {
                if (msg.status == 1) {
                    layer.msg(msg.data);
                } else {
                    layer.msg(msg.data);
                }
            }
        });
    }
</script>