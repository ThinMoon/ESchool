<%--
  Created by IntelliJ IDEA.
  User: YJ
  Date: 2019/11/10
  Time: 23:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.1.8/vue.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/e3.css">
</head>
<body>
<div class="container">
    <div class="row  clearfix">
        <div class="e_navbar">
            <ul class="nav nav-pills" id="enav">
                <li class="col-xs-4 col-md-4 col-lg-4 eli" id='li1' onclick="gotoli1()"><a href="#">顺风车</a></li>
                <li class="col-xs-4 col-md-4 col-lg-4 eli navchosed" id='li2' onclick="gotoli2()"><a href="#" class="navchosed">代取快递</a></li>
                <li class="col-xs-4 col-md-4 col-lg-4 eli" id='li3' onclick="gotoli3()"><a href="#">校园兼职</a></li>
            </ul>
            <div class="smbody">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true" id="backToList" onclick="javascript:history.back(-1);">返回列表</span>
                <br><br><br>
                <form action="${pageContext.request.contextPath}/kdfabu" class="form-horizontal form-orderRelease" role="form">
                    <div class="form-group">
                        <label for="fromplace" class="col-sm-3 control-label">快递公司</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="expressCompany" name="kd_company">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="toplace" class="col-sm-3 control-label">快递单号</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="expressNumber" name="kd_number">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="whengo" class="col-sm-3 control-label">宿舍地址</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="customerAddr" name="kd_adress">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="phonenum" class="col-sm-3 control-label">姓名</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="customerName" name="kd_name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="pay" class="col-sm-3 control-label">手机号</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="customerPhone" name="kd_tel">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="pay" class="col-sm-3 control-label">取件码</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="deliveryCode">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="pay" class="col-sm-3 control-label">报酬</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="customerReward" name="kd_money">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="pay" class="col-sm-3 control-label">取件截止时间</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="deadLine" name="latest_time">
                        </div>
                    </div>
                    <div style="text-align:center">
                        <button class="btn btn-default btn-downn" type="submit" id="toPublish">发布</button>
                    </div>
                </form>

            </div>
        </div>
    </div>
    <img src="../pic/logo.png" id="elogo" alt="">
    <div id="topbtn">
        <button class="btn btn-default" type="submit" id="tomypage" onclick="gotomypage()">个人中心</button>
        <button class="btn btn-default" type="submit" id="toquit" onclick="gotoquit()">退出</button>
    </div>
</div>
<!-- <script>
    var vm=new Vue({
        el:'tomypage',
        methods:function(){

        }
    })
</script> -->
<script src="../js/e.js"></script>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>
