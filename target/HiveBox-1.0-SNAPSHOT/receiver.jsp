<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 2022/6/5
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>我的收件</title>
    <script src="js/jquery-3.6.0.js"></script>
    <script src="js/index.js"></script>
    <!-- <link href="css/css/bootstrap.min.css" rel="stylesheet" type="text/css" /> -->
    <link href="css/receiver.css" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>

<body>

<!-- 顶部 -->
<div class="head">
    <div class="head-nav-top">
        <div class="head-nav-top-left">
            <div class="greet">
                <span>丰巢科技欢迎您！</span>
            </div>
            <span class="fl">
                    <!--中间加获得到的用户名-->
                <% out.print(session.getAttribute("userName"));%>
                </span>

            <div class="head-nav-top-right">
                <ul class="myfc">
                    <li style="width: 110px;">
                        <a id="f2">我的丰巢<img class="im" src="img/下三角.png" alt=""></a>
                        <ul class="innav">
                            <li><a href="myinfo.html">个人信息</a></li>
                            <li>实名认证</li>
                            <li>地址认证</li>
                            <li>地址蒲</li>
                            <li>优惠券</li>
                        </ul>
                    </li>
                </ul>
                <a id="f3">English</a>
                <a id="f4" href="LogoutServlet">退出</a>
            </div>
        </div>
    </div>
</div>
<!-- 导航栏 -->
<div class="head-nav">

    <div class="head-nav-box">
        <div class="head-nav-box-ul">
            <img class="img1" src="img/logo.png" alt="">
            <ul class="nav2">
                <li class="nav_li">
                    <a>首页</a>
                </li>
                <li class="nav_li">
                    <a>寄件下单<img src="img/下三角.png" alt=""></a>
                    <ul class="innav2">
                        <li><a href="sendbag.jsp" style="color: #f8f8f8;
    text-decoration: none;font-size: medium" >机柜寄件</a></li>
                        <li>服务站寄件</li>
                        <li>查询服务</li>
                    </ul>
                </li>
                <li class="nav_li">
                    <a>查快递<img src="img/下三角.png" alt=""></a>
                    <ul class="innav2">
                        <li><a href="receiver.jsp" style="color: #f8f8f8;
    text-decoration: none;font-size: medium">我的收件</a></li>
                        <li><a href="sends.jsp" style="color: #f8f8f8;
    text-decoration: none;font-size: medium">我的寄件</a></li>
                        <li></li>
                    </ul>
                </li>
                <li class="nav_li">
                    <a>我的钱包</a>
                </li>
                <li class="nav_li">
                    <a>新闻资讯<img src="img/下三角.png" alt=""></a>
                    <ul class="innav2">
                        <li>企业动态</li>
                        <li>媒体报道</li>
                        <li>活动专区</li>
                        <li>视频专区</li>
                        <li>行业动态</li>
                        <li>采购招标</li>
                    </ul>
                </li>
                <li class="nav_li">
                    <a>产品介绍<img src="img/下三角.png" alt=""></a>
                    <ul class="innav2">
                        <li>丰巢产品</li>
                        <li>安装丰巢</li>
                        <li></li>
                    </ul>
                </li>
                <li class="nav_li">
                    <a>帮助</a>
                </li>
            </ul>
        </div>
    </div>
</div>


<!-- 收件信息栏 -->


<div class="info">
    <!-- 左边 -->
    <div class="info-context">
        <div class="info-left">
            <ul class="info-nav">
                <li>
                    <a href="receiver.jsp">我的收件</a>
                </li>
                <li>
                    <a href="sends.jsp">我的寄件</a>
                </li>
            </ul>

        </div>
        <!-- 右边 -->
        <div class="info-right">
            <div class="info-right-in">
                <div class="info-right-title">

                    <span class="s1">快递公司</span>
                    <span class="s2">运单号</span>
                    <span class="s3">快递状态</span>
                    <span class="s4">签收时间</span>
                    <span class="s5">操作</span>
                </div>
                <jsp:include page="/receiverOrderServlet"><jsp:param name="us" value="老六"/></jsp:include>
                <div class="info-right-context">
                    <div class="info-right-context-inner">
                        <div id="con">
                            <c:forEach items="${sessionScope.receiverorder}" var="order">
                                <span class="s1">${order.courierCompany}</span>
                                <span class="s2">${order.courierNumber}</span>
                                <span class="s3">${order.condition}</span>
                                <span class="s4">${order.receivingTime}</span>
                            </c:forEach>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

</div>







<!-- 页尾 -->

<footer>
    <img src="img/footer.jpg" alt="">
</footer>

<script>
    var nav = document.querySelector('.myfc')
    var lis = nav.children;
    console.log(lis);

    for (var i = 0; i < lis.length; i++) {
        lis[i].onmouseover = function () { this.children[1].style.display = 'block'; }
        lis[i].onmouseout = function () { this.children[1].style.display = 'none'; }
    }

    var nav2 = document.querySelector('.nav2')
    var lis2 = nav2.children; console.log(lis);
    for (var i = 0; i < lis2.length; i++) {
        lis2[i].onmouseover = function () { this.children[1].style.display = 'block'; }
        lis2[i].onmouseout = function () { this.children[1].style.display = 'none'; }
    }



</script>
</body>

</html>
