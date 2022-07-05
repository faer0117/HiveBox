<%@ page import="jdbc.javabean.User" %>
<%@ page import="jdbc.dao.Users_Select" %><%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 2022/5/28
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>个人中心</title>
    <script src="js/jquery-3.6.0.js"></script>
    <script src="js/index.js"></script>
    <!-- <link href="css/css/bootstrap.min.css" rel="stylesheet" type="text/css" /> -->
    <link href="css/myinfo.css" rel="stylesheet" type="text/css"/>

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


<!-- 个人信息栏 -->


<div class="info">
    <!-- 左边 -->
    <div class="info-context">
        <div class="info-left">
            <div class="info-inner-top">
                <div class="info-inner-img">
                    <img src="img/head-potrait.png" alt="">
                </div>
            </div>
            <ul class="info-nav">
                <li>
                    <a>用户信息</a>
                </li>
                <li>
                    <a>修改密码</a>
                </li>
                <li>
                    <a>实名认证</a>
                </li>
                <li>
                    <a>企业认证</a>
                </li>
                <li>
                    <a>地址蒲</a>
                </li>
                <li>
                    <a>优惠券</a>
                </li>
            </ul>

        </div>
        <!-- 右边 -->
        <jsp:include page="/UserInfoServlet"><jsp:param name="us" value="老六"/></jsp:include>
        <%
            User user = (User) session.getAttribute("user");
        %>
        <div class="info-right">
            <div class="info-right-in">
                <div class="info-right-title">
                    <span>个人信息</span>
                    <div class="changee-info">
                        <!-- 按钮：用于打开模态框 -->
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                            修改信息
                        </button>
                        <%--                        提交表单--%>
                        <form action="" method="post">
                            <!-- 模态框 -->
                            <div class="modal fade" id="myModal">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">

                                        <!-- 模态框头部 -->
                                        <div class="modal-header">
                                            <h4 class="modal-title">修改个人信息</h4>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>

                                        <!-- 模态框主体 -->
                                        <div class="modal-body">
                                            <div class="modal-body-content">
                                                <!-- 内容 -->
                                                <div>
                                                    <label for="">用户名:</label>
                                                    <input type="text" name="" id="">
                                                </div>
                                                <div>
                                                    <label for="">手机号码:</label>
                                                    <input type="tel" name="" id="">
                                                </div>
                                                <div>
                                                    <label for="">电子邮箱</label>
                                                    <input type="email" name="" id="">
                                                </div>

                                                <div>

                                                </div>

                                            </div>

                                            <!-- 模态框底部 -->
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary"
                                                        data-dismiss="modal">关闭</button>
                                                <button type="submit" class="btn btn-primary">确定</button>

                                            </div>

                                        </div>
                                    </div>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>

                <div class="info-right-context">
                    <div class="info-right-context-inner">
                        <label>用户名</label>
                        <div class="info-right-context-span"><span>|</span></div>

                        <!-- 获取数据库的用户名 -->
                        <span class="info-right-contex-span2"><% out.print(session.getAttribute("userName"));%></span>
                    </div>
                    <div class="info-right-context-inner">
                        <label>手机号码</label>
                        <div class="info-right-context-span"><span>|</span></div>

                        <!-- 获取数据库的手机号码 -->
                        <span class="info-right-contex-span2">
                            <%
                                out.print(user.getPhoneNumber());
                            %>
                        </span>
                    </div>
                    <div class="info-right-context-inner">
                        <label>邮箱</label>
                        <div class="info-right-context-span"><span>|</span></div>

                        <span class="info-right-contex-span2">  <%
                            out.print(user.getEmail());
                        %></span>
                    </div>
                    <div class="info-right-context-inner">
                        <label>姓名</label>
                        <div class="info-right-context-span"><span>|</span></div>

                        <span class="info-right-contex-span2">
                              <%
                                  out.print(user.getUserName());
                              %>
                        </span>
                    </div>
                    <div class="info-right-context-inner">
                        <label>性别</label>

                        <div class="info-right-context-span"><span>|</span></div>
                        <span class="info-right-contex-span2">
                              <%
                                  out.print(user.getSex());
                              %>
                        </span>
                    </div>

                    <div class="info-right-context-inner">
                        <label>出生日期</label>
                        <div class="info-right-context-span"><span>|</span></div>
                        <span class="info-right-contex-span2">
                        <%
                        out.print(user.getBirthday());
                        %>
                        </span>
                    </div>
                    <div class="info-right-context-inner">
                        <label>教育程度</label>
                        <div class="info-right-context-span"><span>|</span></div>
                        <span class="info-right-contex-span2">
                            <%
                                out.print(user.getEducation());
                            %>
                        </span>
                    </div>
                    <div class="info-right-context-inner">
                        <label>当前职业</label>
                        <div class="info-right-context-span"><span>|</span></div>
                        <span class="info-right-contex-span2">
                              <%
                                  out.print(user.getJob());
                              %>
                        </span>
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