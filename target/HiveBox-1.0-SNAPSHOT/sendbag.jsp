<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 2022/5/28
  Time: 21:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/sendbag.css" type="text/css">
    <script src="js/province.js"></script>
    <script src="js/jquery-3.6.0.js"></script>

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
                            <li><a>个人信息</a></li>
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

<!-- 快递公司选择 -->
<form action="InsertOrderServlet" method="post">
    <div class="kdselect">
        <div class="kdselect-border">
            <div>
                <span class="kdselect-span">快递公司</span>
            </div>

            <ul class="kdnav">
                <li class="kdnav-li">
                    <img src="img/sf.png" alt="">
                    <span>顺丰速运</span>
                </li>
                <li class="kdnav-li">
                    <img src="img/st.png" alt="">
                    <span>申通速运</span>
                </li>
                <li class="kdnav-li">
                    <img src="img/ems.png" alt="">
                    <span>EMS速运</span>
                </li>
                <li class="kdnav-li">
                    <img src="img/yd.png" alt="">
                    <span>韵达速运</span>
                </li>
                <li class="kdnav-li">
                    <img src="img/zt.png" alt="">
                    <span>中通速运</span>
                </li>
            </ul>
        </div>
    </div>


    <!-- 寄件人信息 -->
    <div class="sendinfo">
        <div class="sendinfo-context">
            <div style="">
                <h3><img src="img/个人.png">寄件人信息</h3>
                <div class="sendinfo-context-inner">
                    <div class="sendinfo-context-info1">
                        <label for="">寄件人:</label>
                        <input type="text" placeholder="请输入姓名" name="sname">
                    </div>
                    <div class="sendinfo-context-info2">
                        <label for="">联系方式:</label>
                        <input type="text" placeholder="请输入手机号" name="sphonenumber">
                    </div>
                    <div class="sendinfo-context-info3">

                        <div class="sendinfo-context-info3-selct">
                            <label for="">所在地区:</label>
                            <input type="text" value="" id="addr-show" placeholder="请选择省市区" name="saddress1">

                            <!-- 省份选择 -->
                            <select id="prov" name="prov" onchange="showCity(this)">
                                <option>=请选择省份=</option>
                            </select>
                            <!-- 城市选择 -->
                            <select id="city" onchange="showCountry(this)">
                                <option>=请选择城市=</option>
                            </select>
                            <!-- 区县选择 -->
                            <select id="country" onchange="selectCountry(this)">
                                <option>=请选择县区=</option>
                            </select>

                            <button type="button" class="btn" onClick="showAddr()">确定</button>
                        </div>

                    </div>
                    <div class="sendinfo-context-info4">
                        <label for="">详细地址:</label>
                        <input type="text" placeholder="请输入详细地址(如xx路,xx号)" name="saddress2">
                    </div>
                </div>

            </div>


        </div>

    </div>


    <!-- 收件人信息 -->

    <div class="receiverinfo">
        <div class="receiverinfo-context">


            <h3><img src="img/双人.png">收件人信息</h3>
            <div class="receiverinfo-context-inner">
                <div class="receiverinfo-context-info1">
                    <label for="">收件人:</label>
                    <input type="text" placeholder="请输入姓名" name="rname">
                </div>
                <div class="receiverinfo-context-info2">
                    <label for="">联系方式:</label>
                    <input type="text" placeholder="请输入手机号" name="rphonenumber">
                </div>
                <div class="receiverinfo-context-info3">

                    <div class="receiverinfo-context-info3-selct">
                        <label for="">所在地区:</label>
                        <input type="text" value="" id="addr-show2" placeholder="请选择省市区" name="raddress1">

                        <!-- 省份选择 -->
                        <select id="prov2" name="prov" onchange="showCity2(this)">
                            <option>=请选择省份=</option>
                        </select>
                        <!-- 城市选择 -->
                        <select id="city2" onchange="showCountry2(this)">
                            <option>=请选择城市=</option>
                        </select>
                        <!-- 区县选择 -->
                        <select id="country2" onchange="selectCountry2(this)">
                            <option>=请选择县区=</option>
                        </select>

                        <button type="button" class="btn2" onClick="showAddr2()">确定</button>
                    </div>

                </div>
                <div class="receiverinfo-context-info4">
                    <label for="">详细地址:</label>
                    <input type="text" placeholder="请输入详细地址(如xx路,xx号)" name="saddress2">
                </div>
            </div>
        </div>
    </div>


    <!-- 快件信息 -->
    <div class="kjinfo">
        <div class="kjinfo-context">
            <div class="kjinfo-context-title">
                <h3>快件信息</h3>
            </div>

            <div class="kjinfo-context-inner">
                <div class="kjinfo-context-info1">
                    <label for="">快件类型:</label>
                    <span>个人快件</span>
                </div>
                <div class="kjinfo-context-info1">
                    <label for="">物品类型:</label>
                    <select name="type" id="se1">
                        <option>文件</option>
                        <option>数码产品</option>
                        <option>日用品</option>
                        <option>食品</option>
                        <option>其他</option>
                    </select>
                </div>
                <div class="kjinfo-context-info1">
                    <label for="">付款类型:</label>
                    <select name="" id="se1">
                        <option>寄付</option>
                        <option>到付</option>
                    </select>
                </div>
                <div class="kjinfo-context-info1">
                    <label for="">快递重量:</label>
                    <input type="text" name="weight" id="">
                </div>
                <div class="kjinfo-context-info1">
                    <label for="">保价:</label>
                    <input type="text">
                </div>
                <div class="kjinfo-context-info1">
                    <label for="">物品数量:</label>
                    <input type="text">
                </div>
                <div class="kjinfo-context-info1">
                    <label for="">备注:</label>
                    <input type="text" name="remark" id="">
                </div>

            </div>
        </div>
    </div>


    <!-- 提交订单 -->

    <div class="submit">
        <div class="submit-btn">
            <input type="submit" value="提交订单">
        </div>
    </div>

</form>
<!-- 页尾 -->
<footer>
    <img src="img/footer.jpg" alt="">
</footer>

<script src="js/sendbag.js"></script>
</body>

</html>
