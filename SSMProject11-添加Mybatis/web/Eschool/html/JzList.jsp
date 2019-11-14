<%--
  Created by IntelliJ IDEA.
  User: YJ
  Date: 2019/11/14
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/e4.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="../plugins/vue/vuejs-2.5.16.js"></script>
    <script src="../plugins/vue/axios-0.18.0.js"></script>
</head>
<body>

<div id="root">
    <div class="container">
        <div class="row  clearfix">
            <div class="e_navbar">
                <ul class="nav nav-pills" id="enav">
                    <li class="col-xs-6 col-md-3 col-lg-3 eli" id='li1' onclick="gotoli1()"><a href="#">顺风车</a></li>
                    <li class="col-xs-6 col-md-3 col-lg-3 eli" id='li2' onclick="gotoli2()"><a href="#">代取快递</a></li>
                    <li class="col-xs-6 col-md-3 col-lg-3 eli navchosed" id='li3' onclick="gotoli3()"><a href="#" class="navchosed">校园兼职</a></li>
                    <li class="col-xs-6 col-sm-3 col-md-3 col-lg-3 eli" id='li7'>
                        <a href="#"><input type="text" class="form-control">
                            <span class="glyphicon glyphicon-search" aria-hidden="true" id="search"></span>
                        </a>
                    </li>
                </ul>

                <div class="smbody" data-spy="scroll" data-target=".smbody" data-offset="0"
                     style="height:200px;overflow:auto; position: relative;">
                    <button class="btn btn-default btn-downn" type="submit" id="publicNewOrder"
                            onclick="javascript:window.location.href='6校园兼职-发布订单.jsp';">发布新兼职</button>
                    <div class="col-xs-12 col-md-12 col-lg-12" id="orderRow">
                        <!-- 校园兼职订单 -->
                        <div class="col-xs-6 col-sm-3 col-md-3 col-lg-3 Order" v-for="jz in JzList">
                            <div class="usereachBody">
                                <div class="usereach">
                                    <span class="el-form-item__span" id="s_name">{{jz.s_name}}</span>
                                </div>
                                <div class="usereach">
                                    <label class="el-form-item__label">兼职时间:</label>
                                    <br>
                                  <%--  <span class="el-form-item__span" id="work_date">10.24-10.30</span>--%>
                                    <span class="el-form-item__span" id="work_time">{{jz.work_time}}</span>
                                </div>
                                <div class="usereach"  id="work_pay">
                                    <label class="el-form-item__label" >报酬:</label>
                                    <span class="el-form-item__span" id="work_money">{{jz.work_money}}</span>
                                </div>

                               <%-- <div class="orderDetail"><a href="JzOrderDetails.jsp?id={{jz.s_id}}" id="work_orderDetail">查看详情</a></div>--%>
                                <div class="orderDetail" @click="findJzByJid(jz.s_id)">查看详情</div>
                       <%--          <div class="orderDetail" @click="window.location.href="JzOrderDetails.jsp?"+"id="+id;">查看详情</div>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <img src="../pic/logo.png" id="elogo" alt="">
        <div id="topbtn">
            <button class="btn btn-default" type="submit" id="tomypage" onclick="gotomypage()">个人中心</button>
            <button class="btn btn-default" type="submit" id="toquit" onclick="gotoquit()">退出</button>
        </div>
    </div>
</div>

<script src="../js/e.js"></script>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>


<script>
    new Vue({
        el: '#root',
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
            JzList:[]
        },
        methods:{
            findAllCar:function () {
                var _this = this;
                axios.get("/SSMProject_war_exploded/findJianZhiAll").then(function (response) {
                    /*  response = $.parseJSON(response);*/
                    /* console.log(response.data);*/
                    _this.JzList=response.data;
                    console.log(_this.JzList);
                }).catch(function (reason) {
                    console.log(reason.data);
                })

            },

            findJzByJid:function (s_id) {
                alert(s_id);
                window.location.href="JzOrderDetails.jsp?id="+s_id;
            }
        },
        created:function () {
            this.findAllCar();

        }
    })

</script>
</body>
</html>
