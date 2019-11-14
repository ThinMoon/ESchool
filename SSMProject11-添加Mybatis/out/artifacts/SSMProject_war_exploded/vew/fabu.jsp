<%--
  Created by IntelliJ IDEA.
  User: YJ
  Date: 2019/11/6
  Time: 19:42
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
<%--<body>
    <form action="${pageContext.request.contextPath}/fabu">
        <input tyle="text" placeholder="请输入车型" name="car_style">
        <input tyle="text" placeholder="请输入车牌号" name="car_number">
        <input tyle="text" placeholder="请输入出发地" name="car_start">
        <input tyle="text" placeholder="请输入目的地" name="car_stop">
        <input tyle="text" placeholder="请输入出发时间" name="car_start_time">
        <input tyle="text" placeholder="请输入乘车人联系电话" name="car_tel">
        <input tyle="text" placeholder="请输入报酬" name="car_money">
        <input tyle="text" placeholder="请输入备注" name="car_beizhu">
        <input type="submit" value="发布">
    </form>
</body>--%>
<body>
<div class="container">
    <div class="row  clearfix">
        <div class="e_navbar">
            <ul class="nav nav-pills" id="enav">
                <li class="col-xs-4 col-md-4 col-lg-4 eli navchosed" id='li1'><a href="#" class="navchosed">顺风车</a></li>
                <li class="col-xs-4 col-md-4 col-lg-4 eli" id='li2'><a href="#">代取快递</a></li>
                <li class="col-xs-4 col-md-4 col-lg-4 eli" id='li3'><a href="#">校园兼职</a></li>
            </ul>
            <div class="smbody">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true" id="backToList">返回列表</span>
                <br><br><br>
                <form action="${pageContext.request.contextPath}/fabu" class="form-horizontal form-orderRelease" role="form">
                    <div class="form-group">
                        <label for="departure-c" class="col-sm-3 control-label" >车型</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="departure-c" name="car_style">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="departure-c" class="col-sm-3 control-label" >车牌号</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="departure-c" name="car_number">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="departure-c" class="col-sm-3 control-label" >出发地</label>
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
                        <label for="time-c" class="col-sm-3 control-label">出发时间</label>
                        <div class="col-sm-9 controls input-append date form_time" data-date="" data-date-format="hh:ii" data-link-field="dtp_input3" data-link-format="hh:ii">
                            <input id="time-c" size="16" type="text" class="form-control" value="" name="car_start_time">
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
                            <input id="pay-c" type="text" class="form-control" id="lastname" name="car_money">
                        </div>
                    </div>
                        <div class="form-group">
                            <label for="phone-c" class="col-sm-3 control-label">备注</label>
                            <div class="col-sm-9">
                                <input id="phone-c" type="text" class="form-control" id="lastname" name="car_beizhu">
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
        <button class="btn btn-default" type="submit" id="tohomepage">我的主页</button>
        <button class="btn btn-default" type="submit" id="toquit">退出</button>
    </div>
</div>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="../js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
<script type="text/javascript" src="../js/my-datetime.js" charset="UTF-8"></script>

</body>
</html>

