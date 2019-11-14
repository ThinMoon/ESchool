<%--
  Created by IntelliJ IDEA.
  User: YJ
  Date: 2019/11/8
  Time: 8:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>代取快递-发布订单</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/e4.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div id="app">
    <div class="container">
        <div class="row  clearfix">
            <div class="e_navbar">
                <ul class="nav nav-pills" id="enav">
                    <li class="col-xs-6 col-md-3 col-lg-3 eli" id='li1'><a href="#">顺风车</a></li>
                    <li class="col-xs-6 col-md-3 col-lg-3 eli navchosed" id='li2'>
                        <a href="#" class="navchosed">代取快递</a></li>
                    <li class="col-xs-6 col-md-3 col-lg-3 eli" id='li3'><a href="#">校园兼职</a></li>
                    <li class="col-xs-6 col-md-3 col-lg-3 eli" id='li4'>
                        <a href="#"><input type="text" class="form-control">
                            <span class="glyphicon glyphicon-search" aria-hidden="true" id="search"></span>
                        </a>
                    </li>
                </ul>

                <div class="smbody" data-spy="scroll" data-target=".smbody" data-offset="0"
                     style="height:200px;overflow:auto; position: relative;">
                    <button class="btn btn-default btn-downn" type="submit" id="publicNewOrder">发布新订单</button>

                    <div class="container">
                        <ul class="nav nav-tabs">
                            <div class="row  clearfix" id="orderRow">

                                <div class="col-xs-6 col-md-3 col-lg-3 Order" v-for="message in messages">
                                    <div class="usereachBody">
                                        <div class="usereach">
                                            <span class="el-form-item__span" id="kd_company">{{message.kd_type}}</span>
                                            <label class="el-form-item__label">快递</label>
                                        </div>
                                        <div class="usereach">
                                            <label class="el-form-item__label">送往：</label>
                                            <span class="el-form-item__span" id="kd_adress">{{message.kd_adress}}</span>
                                        </div>
                                        <div class="usereach">
                                            <label class="el-form-item__label">报酬：</label>
                                            <span class="el-form-item__span" id="kd_money">{{message.kd_money}}</span>
                                        </div>
                                        <br>
                                        <a href="#" id="orderDetail">查看详情</a>
                                    </div>
                                </div>
                            </div>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <img src="../pic/logo.png" id="elogo" alt="">
        <div id="topbtn">
            <button class="btn btn-default" type="submit" id="tohomepage">我的主页</button>
            <button class="btn btn-default" type="submit" id="toquit">退出</button>
        </div>
    </div>
</div>

<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>

</body>
<script type="text/javascript" src="../plugins/vue/vuejs-2.5.16.js"></script>
<script type="text/javascript" src="../plugins/vue/axios-0.18.0.js"></script>
<script>
    var app = new Vue({
        el: '#app',
        data: {
            messages:[
                {
                    kd_type:"圆通",
                    kd_adress:"35#404",
                    kd_money:"1元"
                },
                {kd_type:"中通",
                    kd_adress:"35#404",
                    kd_money:"1元"},
                {kd_type:"申通",
                    kd_adress:"35#404",
                    kd_money:"1元"},
                {kd_type:"韵达",
                    kd_adress:"35#404",
                    kd_money:"1元"},
                {kd_type:"百世",
                    kd_adress:"35#404",
                    kd_money:"1元"},
                {kd_type:"京东",
                    kd_adress:"35#404",
                    kd_money:"2元"},
                {kd_type:"京东",
                    kd_adress:"35#404",
                    kd_money:"2元"},
                {kd_type:"京东",
                    kd_adress:"35#404",
                    kd_money:"2元"},
                {kd_type:"京东",
                    kd_adress:"35#404",
                    kd_money:"2元"},
                {kd_type:"京东",
                    kd_adress:"35#404",
                    kd_money:"2元"}

            ],
        },
        methods:{
            loadCarDataById: function () {
                var _this = this;
                axios.get("/content/findByCategoryId.do")
                    .then(function (response) {

                    }).catch(function (reason) {

                });

            }
        },
        created: function() {
            this.loadCarDataById();
        }
    })
</script>
</html>
