<%--
  Created by IntelliJ IDEA.
  User: YJ
  Date: 2019/11/8
  Time: 14:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="app">
   <p>d</p>
</div>

</body>
<script type="text/javascript" src="../plugins/vue/vuejs-2.5.16.js"></script>
<script type="text/javascript" src="../plugins/vue/axios-0.18.0.js"></script>

<script>
    var app = new Vue({
        el: '#app',
        data: {
            messages:[],
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
