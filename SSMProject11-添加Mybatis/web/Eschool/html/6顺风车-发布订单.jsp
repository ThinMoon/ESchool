<%--
  Created by IntelliJ IDEA.
  User: YJ
  Date: 2019/11/10
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" href="../css/e3.css">
</head>
<body>

<div class="container">
    <div class="row  clearfix">
        <div class="e_navbar">
            <ul class="nav nav-pills" id="enav">
                <li class="col-xs-4 col-md-4 col-lg-4 eli navchosed" id='li1' onclick="gotoli1()"><a href="#" class="navchosed">顺风车</a></li>
                <li class="col-xs-4 col-md-4 col-lg-4 eli" id='li2' onclick="gotoli2()"><a href="#">代取快递</a></li>
                <li class="col-xs-4 col-md-4 col-lg-4 eli" id='li3' onclick="gotoli3()"><a href="#">校园兼职</a></li>
            </ul>
            <div class="smbody">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true" id="backToList" onclick="javascript:history.back(-1);">返回列表</span>
                <br><br><br>
                <form action="${pageContext.request.contextPath}/insertCar1" class="form-horizontal form-orderRelease" role="form">
            <%--        <div class="form-group">
                        <label class="col-sm-3 control-label">类型</label>
                        <div class="col-sm-9">
                            <label class="radio-inline">
                                <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" checked>我是乘客
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option2" onclick="javascript:window.location.href='6顺风车-发布订单.jsp';">我是骑手
                            </label>
                        </div>
                    </div>--%>
                    <div class="form-group">
                        <label for="departure-c" class="col-sm-3 control-label">出发地</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="departure-c" name="car_start">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="arrival-c" class="col-sm-3 control-label">目的地</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="arrival-c" name="car_stop">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="date-c" class="col-sm-3 control-label">出发日期</label>
                        <div class="col-sm-9 controls input-append date form_date" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                            <input  size="16" type="text" class="form-control" value="" name="car_start_time">
                            <span class="add-on"><i class="icon-remove"></i></span>
                            <span class="add-on"><i class="icon-th"></i></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="time-c" class="col-sm-3 control-label">出发时间</label>
                        <div class="col-sm-9 controls input-append date form_time" data-date="" data-date-format="hh:ii" data-link-field="dtp_input3" data-link-format="hh:ii">
                            <input id="time-c" size="16" type="text" class="form-control" value="">
                            <span class="add-on"><i class="icon-remove"></i></span>
                            <span class="add-on"><i class="icon-th"></i></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="phone-c" class="col-sm-3 control-label">手机号</label>
                        <div class="col-sm-9">
                            <input id="phone-c" type="text" class="form-control" id="lastname" name="car_tel">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="pay-c" class="col-sm-3 control-label">报酬</label>
                        <div class="col-sm-9">
                            <input id="pay-c" type="text" class="form-control" id="lastname1" name="car_money">
                        </div>
                    </div>
          <%--          <div class="form-group">
                        <label for="type-c" class="col-sm-3 control-label">理想车型</label>
                        <div class="col-sm-9">
                            <label class="radio-inline">
                                <input type="radio" name="inlineRadioOptions2" id="inlineRadio2" value="option3" checked>电动车
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="inlineRadioOptions2" id="inlineRadio2" value="option4">自行车
                            </label>
                        </div>
                    </div>--%>
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
<script src="../js/e.js"></script>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="../js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
<script type="text/javascript" src="../js/my-datetime.js" charset="UTF-8"></script>
</body>
</html>
