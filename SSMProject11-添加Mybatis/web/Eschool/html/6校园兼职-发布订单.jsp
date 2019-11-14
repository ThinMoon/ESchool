<%--
  Created by IntelliJ IDEA.
  User: YJ
  Date: 2019/11/11
  Time: 0:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/e3.css">
</head>
<body>
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
                <form action="${pageContext.request.contextPath}/jianZhifabu1" class="form-horizontal form-orderRelease" role="form">
                    <div class="form-group">
                        <label for="merchantName" class="col-sm-3 control-label">商家名称</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="merchantName" name="s_name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="jobAddr" class="col-sm-3 control-label">地址</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="jobAddr" name="s_adress">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="jobTele" class="col-sm-3 control-label">联系电话</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="jobTele" name="s_tel">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="jobTime" class="col-sm-3 control-label">兼职时间段</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="jobTime" name="work_time">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="jobDoing" class="col-sm-3 control-label">兼职内容</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="jobDoing" name="work_content">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="jobPayment" class="col-sm-3 control-label">兼职薪酬</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="jobPayment" name="work_money">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="jobNeed" class="col-sm-3 control-label">需要人数</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="jobNeed" name="need_person">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="jobRemark" class="col-sm-3 control-label">备注</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="jobRemark" name="beizhu">
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
<script src="../js/e.js"></script>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>
