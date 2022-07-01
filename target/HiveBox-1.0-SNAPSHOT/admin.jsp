<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 2022/6/5
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>首页</title>
    <script src="js/jquery-3.6.0.js"></script>
    <script src="js/index.js"></script>
    <!-- <link href="css/css/bootstrap.min.css" rel="stylesheet" type="text/css" /> -->
    <link href="css/admin.css" rel="stylesheet" type="text/css"/>

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
                <span>丰巢科技管理系统</span>
            </div>
            <span class="fl">
                    <!--中间加获得到的用户名-->
                <% out.print(session.getAttribute("userName"));%>
                </span>

            <div class="head-nav-top-right">
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
                    <a href="admin.jsp">账号管理</a>
                </li>
                <li class="nav_li">
                    <a href="kdmg.jsp">快递管理</a>
                </li>
                <li class="nav_li">
                    <a href="echarts.jsp">快递图表展示</a>
                </li>

            </ul>
        </div>
    </div>
</div>


<div class="context">
    <div class="context-box">
        <div class="context-box-table">
            <table class="table table-bordered table-hover">
                <tr>
                    <th>用户名</th>
                    <th>姓名</th>
                    <th>手机号</th>
                    <th>家庭地址</th>
                    <th>电子邮箱</th>

                </tr>
                <jsp:include page="/UserAllServlet">
                    <jsp:param name="us" value="老六"/>
                </jsp:include>
                <c:forEach items="${sessionScope.userList}" var="user">
                    <tr>
                        <td>${user.userName}</td>
                        <td>${user.userName}</td>
                        <td>${user.phoneNumber}</td>
                        <td>${user.address}</td>
                        <td>${user.email}</td>
                    </tr>
                </c:forEach>
            </table>
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
