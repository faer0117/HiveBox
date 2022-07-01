<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 2022/5/28
  Time: 15:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>首页</title>
    <script src="js/jquery-3.6.0.js"></script>
    <script src="js/index.js"></script>
    <!-- <link href="css/css/bootstrap.min.css" rel="stylesheet" type="text/css" /> -->
    <link href="css/index_sucess.css" rel="stylesheet" type="text/css"/>

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
                            <li><a href="myinfo.jsp"style="color: #f8f8f8;
    text-decoration: none;font-size: medium"
                            >个人信息</a></li>
                            <li>实名认证</li>
                            <li>地址认证</li>
                            <li>地址蒲</li>
                            <li>优惠券</li>
                        </ul>
                    </li>
                </ul>
                <a id="f3">English</a>
                <a id="f4" href="LogoutServlet" style="color: black;
    text-decoration: none;font-size: medium" >退出</a>
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
    text-decoration: none;font-size: medium">机柜寄件</a></li>
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


<!-- 轮播图 -->

<div id="demo" class="carousel slide" data-ride="carousel">

    <!-- 指示符 -->
    <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
        <li data-target="#demo" data-slide-to="1"></li>
        <li data-target="#demo" data-slide-to="2"></li>
    </ul>

    <!-- 轮播图片 -->
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="img/banner-vip-1.jpg">
        </div>
        <div class="carousel-item">
            <img src="img/banner3.jpg">
        </div>
        <div class="carousel-item">
            <img src="img/banner8.jpg">
        </div>
    </div>

    <!-- 左右切换按钮 -->
    <a class="carousel-control-prev" href="#demo" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </a>
    <a class="carousel-control-next" href="#demo" data-slide="next">
        <span class="carousel-control-next-icon"></span>
    </a>
</div>


<!-- 优势区 -->
<div class="ysq">
    <div class="block1">
        <div class="blockimg"><img src="img/home-slogen-1.png" alt=""></div>
        <div class="blockcontext">
            <h5>智能收寄快递</h5>
            <h5>24小时服务</h5>
        </div>
    </div>
    <div class="block2">
        <div class="blockimg"><img src="img/home-slogen-2.png" alt=""></div>
        <div class="blockcontext">
            <h5>全国城市覆盖量</h5>
            <h5>200+</h5>
        </div>
    </div>
    <div class="block3">
        <div class="blockimg"><img src="img/home-slogen-3.png" alt=""></div>
        <div class="blockcontext">
            <h5>已服务用户量</h5>
            <h5>4亿</h5>
        </div>
    </div>
    <div class="block4">
        <div class="blockimg"><img src="img/home-slogen-4.png" alt=""></div>
        <div class="blockcontext">
            <h5>日均包裹处理量</h5>
            <h5>2000万+</h5>
        </div>
    </div>
</div>


<!-- 标签栏 -->
<div class="bql">
    <div class="container">
        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#home">链接能力</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#menu1">信息集成</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#menu2">信息集成</a>
            </li>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
            <div id="home" class="container tab-pane active">
                <img class="con-img" src="img/contain1.jpg" alt="">
            </div>
            <div id="menu1" class="container tab-pane fade"><br>
                <img class="con-img" src="img/contain2.jpg" alt="">
            </div>
            <div id="menu2" class="container tab-pane fade"><br>
                <img class="con-img" src="img/contain3.jpg" alt="">
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
        lis[i].onmouseover = function () {
            this.children[1].style.display = 'block';
        }
        lis[i].onmouseout = function () {
            this.children[1].style.display = 'none';
        }
    }

    var nav2 = document.querySelector('.nav2')
    var lis2 = nav2.children;
    console.log(lis);
    for (var i = 0; i < lis2.length; i++) {
        lis2[i].onmouseover = function () {
            this.children[1].style.display = 'block';
        }
        lis2[i].onmouseout = function () {
            this.children[1].style.display = 'none';
        }
    }
</script>
</body>

</html>
