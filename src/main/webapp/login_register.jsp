<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 2022/5/28
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">

    <title>注册登录界面</title>
    <link rel="stylesheet" href="css/login_register.css">
</head>

<body>
<!-- 页顶栏 -->
<div class="head">
    <div class="head-inner">
        <img src="img/logo.png" alt="">
        <span class="span1">|</span>
        <span class="span2">欢迎登录</span>
    </div>

</div>

<div class="context">
    <img class="login-banner" src="img/login-banner.png" alt="">
    <div class="container">
        <div class="form-box">
            <!-- 注册 -->
            <form action="RegisterServlet" method="post">
                <div class="register-box hidden">
                    <h1>register</h1>
                    <input type="text" name="name_register" required placeholder="用户名" pattern="^[a-zA-Z_]\w{0,9}$" >
                    <input type="tel" name="phonenumber_register" required placeholder="手机号" >
                    <input type="password" name="password_register1" id="pwd"  required placeholder="密码" pattern="^[a-zA-Z_]\w{0,9}$">
                    <input type="password" name="password_register2" id="pwd_ag"  required placeholder="确认密码" pattern="^[a-zA-Z_]\w{0,9}$" onblur="checkpwd()">
                    <button type="submit">注册</button>
                </div>
            </form>


            <!-- 登录 -->
            <form action="LoginServlet" method="post">
                <div class="login-box">
                    <h1>login</h1>
                    <input type="text" name="name" placeholder="用户名"   required>
                    <input type="password" name="password" placeholder="密码" required >
                    <button type="submit">登录</button>
                </div>
            </form>

        </div>
        <div class="con-box left">
            <h2>欢迎使用<span>丰巢</span></h2>
            <p>快来注册你的<span>账号</span>吧</p>
            <img src="img/ewm.png">
            <p>已有账号</p>
            <button id="login">去登录</button>
        </div>
        <div class="con-box right">
            <h2>欢迎来到<span>丰巢</span></h2>
            <p>快来看看你的消息吧</p>
            <img src="img/ewm.png">
            <p>没有账号？</p>
            <button id="register">去注册</button>
        </div>
    </div>

</div>
<div class="footer">
    <img src="img/footer.png" alt="">
</div>


<script>
    // 要操作到的元素
    let login = document.getElementById('login');
    let register = document.getElementById('register');
    let form_box = document.getElementsByClassName('form-box')[0];
    let register_box = document.getElementsByClassName('register-box')[0];
    let login_box = document.getElementsByClassName('login-box')[0];
    // 去注册按钮点击事件
    register.addEventListener('click', () => {
        form_box.style.transform = 'translateX(80%)';
        login_box.classList.add('hidden');
        register_box.classList.remove('hidden');
    })
    // 去登录按钮点击事件
    login.addEventListener('click', () => {
        form_box.style.transform = 'translateX(0%)';
        register_box.classList.add('hidden');
        login_box.classList.remove('hidden');
    })


    var ipt = document.getElementById("password");
    var img = document.querySelector('img');
    var mg = document.querySelector('.mg');
    ipt.onblur = function () {
        //判断输入是否符合要求
        if (this.value.length < 6 || this.value.length > 16) {
            img.src = 'img/错误提示.png';
            mg.className = 'mg wrong';
            mg.innerHTML = '你输入的信息有误';
        } else {
            img.src = 'img/输入正确.png';
            mg.className = 'mg right';
            mg.innerHTML = '信息正确';
        }
    }

</script>

</body>

</html>
