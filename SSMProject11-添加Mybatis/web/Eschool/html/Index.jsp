<%--
  Created by IntelliJ IDEA.
  User: YJ
  Date: 2019/11/11
  Time: 8:43
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
        <form  action="${pageContext.request.contextPath}/addUser1"class="login_bg  align-self-center">
            <br>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="手机号(11位数字)" id="phoneNum" name="u_tel">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="用户名(6-18位数字或字母)" id="userName" name="username">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder='真实姓名(支持中英文及".")' id="name" name="rel_name">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder='身份证号(18位数字或"X")' id="ID" shengfenz>
            </div>
            <div class="form-group">
                <input type="password" class="form-control" placeholder='密码(6-18位数字或字母)' id="password" name="password">
            </div>
            <div class="form-group">
                <input type="text" class="form-control"  placeholder='请输入验证码' id="securityCode">
                <button class="btn btn-default" type="submit" id="ssc">发送验证码</button>
            </div>
            <div style="text-align:center">
                <button class="btn btn-default" type="submit" id="loginbtn">注册</button>
            </div>
            <br>
        </form>
    </div>
    <img src="../pic/logo.png" id="elogo" alt="">
    <div id="topbtn">
        <button class="btn btn-default" type="submit" id="tologin" onclick="gotologin()">登录</button>
        <button class="btn btn-default" type="submit" id="tosignup" onclick="gotosignup()">注册</button>
    </div>
</div>
<script src="../js/e.js"></script>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>
