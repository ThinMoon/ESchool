<%--
  Created by IntelliJ IDEA.
  User: YJ
  Date: 2019/11/1
  Time: 22:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="../css/e.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container align-items-center">
    <div class="row">
        <form class="login_bg  align-self-center">
            <br>
            <div class="form-group">
                <label>Username</label>
                <input type="text" class="form-control" id="login_un" placeholder="请输入手机号">
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" class="form-control" id="login_pw" placeholder="请输入密码">
            </div>
            <div style="text-align:center">
                <button class="btn btn-default" type="submit" id="loginbtn">登录</button>
            </div>
            <br>
        </form>
    </div>
    <img src="../image/logo.png" id="elogo" alt="">
    <div id="topbtn">
        <button class="btn btn-default" type="submit" id="tologin">登录</button>
        <button class="btn btn-default" type="submit" id="tosignup">注册</button>
    </div>
</div>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>
