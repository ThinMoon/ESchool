<%--
  Created by IntelliJ IDEA.
  User: YJ
  Date: 2019/11/1
  Time: 23:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>E-login</title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="../css/carousel.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container align-items-center">
    <div class="row">
        <form class="login_bg  align-self-center">
            <!-- <br> -->
            <div id="myCarousel" class="carousel slide">
                <!-- 轮播（Carousel）指标 -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <!-- 轮播（Carousel）项目 -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="../image/1.jpg" alt="First slide">
                        <!-- <div class="carousel-caption">标题 1</div> -->
                    </div>
                    <div class="item">
                        <img src="../image/2.jpg" alt="Second slide">
                    </div>
                    <div class="item">
                        <img src="../image/3.jpg" alt="Third slide">
                    </div>
                </div>
            </div>
            <!-- <br> -->
        </form>
    </div>
    <img src="logo.png" id="elogo" alt="">
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
