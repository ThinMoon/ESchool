<%--
  Created by IntelliJ IDEA.
  User: YJ
  Date: 2019/11/14
  Time: 16:43
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
<div id="root1">
    <div class="container">
        <div class="row  clearfix">
            <div class="e_navbar">
                <ul class="nav nav-pills" id="enav">
                    <li class="col-xs-6 col-md-3 col-lg-3 eli navchosed" id='li1' onclick="gotoli1()"><a href="#" class="navchosed">顺风车</a></li>
                    <li class="col-xs-6 col-md-3 col-lg-3 eli" id='li2' onclick="gotoli2()"><a href="#">代取快递</a></li>
                    <li class="col-xs-6 col-md-3 col-lg-3 eli" id='li3' onclick="gotoli3()"><a href="#">校园兼职</a></li>
                    <li class="col-xs-6 col-sm-3 col-md-3 col-lg-3 eli" id='li7'>
                        <a href="#"><input type="text" class="form-control">
                            <span class="glyphicon glyphicon-search" aria-hidden="true" id="search"></span>
                        </a>
                    </li>
                </ul>

                <div class="smbody" data-spy="scroll" data-target=".smbody" data-offset="0"
                     style="height:200px;overflow:auto; position: relative;">
                    <button class="btn btn-default btn-downn" type="submit" id="publicNewOrder"
                            onclick="javascript:window.location.href='6顺风车-发布订单.jsp';">发布新订单</button>
                    <!--      <div id="classify">
                              <a>分类查看：</a><a href="8-列表-顺风车乘客.html">我是乘客</span> <a href="8-列表-顺风车骑手.html">我是骑手<a></a>
                          </div>col-sm-12-->
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" id="orderRow">
                        <!-- 顺风车订单 --><!-- 乘客订单 -->
                        <div class="col-xs-6 col-sm-3 col-md-3 col-lg-3 Order" v-for="car in CarList">
                            <div class="usereachBody" ><!--v-for="car in CarList"-->
                                <div class="usereach">
                                    <label class="el-form-item__label">从:</label>
                                    <a>
                                        <span class="el-form-item__span" id="car_star">{{car.car_start}}</span>
                                    </a>
                                </div>
                                <div class="usereach" id="passenger">
                                    <label class="el-form-item__label">到:</label>
                                    <span class="el-form-item__span" id="car_stop">{{car.car_stop}}</span>
                                </div>
                                <div class="usereach">
                                    <label class="el-form-item__label">出发时间:</label>
                                    <br>
                                    <span class="el-form-item__span" id="car_star_time">{{car.car_start_time}}</span>
                                </div>
                                <div class="usereach"  id="car_pay">
                                    <label class="el-form-item__label" >报酬:</label>
                                    <span class="el-form-item__span" id="car_money">{{car.car_money}}</span>
                                </div>
                                <div class="orderDetail"><a href="7顺风车-订单详情c.html" id="work_orderDetail">查看详情</a></div>
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
        el: '#root1',
        data: {
            CarList:[]
        },
        methods:{
            findAllCar:function () {
                var _this = this;
                axios.post("/SSMProject_war_exploded/findAllCar").then(function (response) {
                    /*  response = $.parseJSON(response);*/
                    /* console.log(response.data);*/
                    _this.CarList=response.data;
                    console.log(_this.CarList);
                }).catch(function (reason) {
                    console.log(reason.data);
                })

            }
        },
        created:function () {
            this.findAllCar();

        }
    })

</script>
</body>
</html>
