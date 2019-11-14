<%--
  Created by IntelliJ IDEA.
  User: YJ
  Date: 2019/11/14
  Time: 19:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="../css/e3.css">
    <script src="../plugins/vue/vuejs-2.5.16.js"></script>
    <script src="../plugins/vue/axios-0.18.0.js"></script>
</head>
<body>
<div id="root">
    <div class="container">
        <div class="row  clearfix">
            <div class="e_navbar">
                <ul class="nav nav-pills" id="enav">
                    <li class="col-xs-4 col-md-4 col-lg-4 eli" id='li1' onclick="gotoli1()"><a href="#">顺风车</a></li>
                    <li class="col-xs-4 col-md-4 col-lg-4 eli" id='li2' onclick="gotoli2()"><a href="#">代取快递</a></li>
                    <li class="col-xs-4 col-md-4 col-lg-4 eli navchosed" id='li3' onclick="gotoli3()"><a href="#" class="navchosed">校园兼职</a></li>
                </ul>
                <div class="smbody">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true" id="backToList" onclick="javascript:history.back(-1);">返回列表</span>
                    <br><br><br>
                    <div class="userall">
                        <div class="usereach">
                            <label class="el-form-item__label">商家名称:      </label>
                            <span class="el-form-item__span" id="check-merchantName">{{JzList.s_name}}</span>
                        </div>
                        <div class="usereach">
                            <label class="el-form-item__label">地址:             </label>
                            <span class="el-form-item__span" id="check-jobAddr">{{JzList.s_adress}}</span>
                        </div>
                        <div class="usereach">
                            <label class="el-form-item__label">联系电话:      </label>
                            <span class="el-form-item__span" id="check-jobTele">{{JzList.s_tel}}</span>
                        </div>
                        <div class="usereach">
                            <label class="el-form-item__label">兼职时间段:  </label>
                            <span class="el-form-item__span" id="check-jobTime">{{JzList.work_time}}</span>
                        </div>
                        <div class="usereach">
                            <label class="el-form-item__label">兼职内容:      </label>
                            <span class="el-form-item__span" id="check-jobDoing">{{JzList.work_content}}</span>
                        </div>
                        <div class="usereach">
                            <label class="el-form-item__label">兼职薪酬:      </label>
                            <span class="el-form-item__span" id="check-jobPayment">{{JzList.work_money}}</span>
                        </div>
                        <div class="usereach">
                            <label class="el-form-item__label">需要人数:      </label>
                            <span class="el-form-item__span" id="check-jobNeed">{{JzList.need_person}}</span>
                        </div>
                        <div class="usereach">
                            <label class="el-form-item__label">备注:             </label>
                            <span class="el-form-item__span" id="check-jobRemark">{{JzList.beizhu}}</span>
                        </div>
                    </div><br>
                    <div style="text-align:center">
                        <button class="btn btn-default btn-downn" type="submit" id="toTakeOrder" onclick="orderTaken()">申请接单</button>
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
</body>


<script>
    new Vue({
        el: '#root',
        data: {
            JzList:{}
        },
        methods:{
            findJzByJid:function (s_id) {
                var _this = this;
                axios.get("/SSMProject_war_exploded/findJzByJid?sid="+s_id).then(function (response) {
                    /*  response = $.parseJSON(response);*/
                    /* console.log(response.data);*/
                    _this.JzList=response.data;

                    console.log(_this.JzList);
                }).catch(function (reason) {
                    console.log(reason.data);
                })
            }
        },
        created:function () {
            var id=window.location.href.split("?")[1].split("=")[1];
            this.findJzByJid(id);

        }
    })
</script>
</html>
