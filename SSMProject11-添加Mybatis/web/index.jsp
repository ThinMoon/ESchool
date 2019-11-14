<%--
  Created by IntelliJ IDEA.
  User: 码蚁小强
  Date: 19/1/1
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%--
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <link rel="stylesheet" href="css/login.css">
  </head>
  <body>


&lt;%&ndash;  <form action="${pageContext.request.contextPath}/addCustomer">
    客户名称:<input type="text" name="cust_name"> <br>
    客户职业:<input type="text" name="cust_profession"/> <br>
    客户电话: <input type="text" name="cust_phone"/> <br>
    客户邮件: <input type="text" name="cust_email"/> <br>
    <input type="submit" value="添加">
  </form>&ndash;%&gt;
  <form action="${pageContext.request.contextPath}/addCustomer">
  <div id="root">
    <div id="login_body">

      <div class="login_b_center">
        <!--<div class="project_title">易校园</div>-->
        <div class="text-effect">易校园</div>
        <div class="login_bg">
          <form>
            <div class="userName">
              <span></span>
              <input type="text" placeholder="请输入用户名..." name="cust_name">
            </div>
            <div class="password">
              <span></span>
              <input type="password"placeholder="请输密码..." name="cust_profession">
            </div>
            <div class="hrh">
              <input type="submit" value="登录"  >
            </div>
          </form>

        </div>
      </div>
    </div>
  </div>
  </form>

  </body>
</html>
--%>
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
  <link rel="stylesheet" href="./Eschool/css/carousel.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container align-items-center">
  <div class="row">
    <!-- <form class="login_bg  align-self-center"> -->
    <!-- <br> -->

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- 轮播（Carousel）指标  -->
      <ol class="carousel-indicators" id="indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <!-- 轮播（Carousel）项目  -->
      <div class="carousel-inner">
        <div class="item active">
          <img src="https://i.loli.net/2019/10/27/Xb2qp3keh9f7N4I.jpg" alt="First slide">
          <div class="carousel-caption">
            <p class="text">轮播图一</p>
          </div>
        </div>
        <div class="item">
          <img src="https://i.loli.net/2019/10/30/WKCqJMg9yHQO1Tv.jpg" alt="Second slide">
          <div class="carousel-caption">
            <p class="text">轮播图二</p>
          </div>
        </div>
        <div class="item">
          <img src="https://i.loli.net/2019/10/27/Xb2qp3keh9f7N4I.jpg" alt="Third slide">
          <div class="carousel-caption">
            <p class="text">轮播图三</p>
          </div>
        </div>
      </div>
      <!-- 左右切换按钮 -->
      <a class="carousel-control-prev" href="#demo" data-slide="prev" >
        <span class="carousel-control-prev-icon"></span>
      </a>
      <a class="carousel-control-next" href="#demo" data-slide="next">
        <span class="carousel-control-next-icon"></span>
      </a>
    </div>
    <!-- </form>  -->
  </div>
</div>
<img src="logo.png" id="elogo" alt="">
<div id="topbtn">
  <button class="btn btn-default" type="submit" id="tologin" onclick="window.location.href='Eschool/html/login.jsp';">登录</button>
  <button class="btn btn-default" type="submit" id="tosignup" onclick="window.location.href='Eschool/html/Index.jsp';">注册</button>
</div>
<script src="../js/e.js"></script>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>

</html>

