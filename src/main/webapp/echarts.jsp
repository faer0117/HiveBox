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
    <link href="css/echarts.css" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.staticfile.org/echarts/4.3.0/echarts.min.js"></script>
    <script type="text/javascript" src="https://fastly.jsdelivr.net/npm/jquery"></script>
    <script type="text/javascript" src="https://fastly.jsdelivr.net/npm/echarts@5.3.2/dist/echarts.min.js"
            charset=utf-8></script>

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
        <div id="main" style="width: 600px;height:400px;">

        </div>
    </div>
</div>



<!-- 页尾 -->

<footer>
    <img src="img/footer.jpg" alt="">
</footer>

<script>
    //图表
    var chartDom = document.getElementById('main');
    var myChart = echarts.init(chartDom);
    $.get('ktServlet', function (data) {
        myChart.setOption({
            title: {
                text: '快递数量占比',
                subtext: '显示每家公司的快递数量占比',
                left: 'center'
            },
            tooltip: {
                trigger: 'item'
            },
            legend: {
                orient: 'vertical',
                left: 'left'
            },
            series: [{
                name: '快递公司',
                type: 'pie',
                radius: '50%',
                data: data,
                emphasis: {
                    itemStyle: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }]
        })
    }, 'json');

</script>
</body>

</html>
