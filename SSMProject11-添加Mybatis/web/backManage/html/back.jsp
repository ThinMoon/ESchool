<%--
  Created by IntelliJ IDEA.
  User: YJ
  Date: 2019/11/11
  Time: 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <link rel="stylesheet" href="../css/back.css">
<%--    <script src="../plugins/jquery/jquery.min.js"></script>
    <script src="../plugins/vue/vuejs-2.5.16.js"></script>
    <script src="../plugins/vue/axios-0.18.0.js"></script>--%>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.1.8/vue.min.js"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
</head>
<body>
<div id="container">

    <div id="aside">
        <img src="../img/logo.png" id="logo">
        <div id="tab1" class="tab" onclick="Tab(1)">
            个人资料
        </div>
        <div id="tab2" class="tab" onclick="Tab(2)">
            顺风车
        </div>
        <div id="tab3" class="tab" onclick="Tab(3)">
            代取快递
        </div>
        <div id="tab4" class="tab" onclick="Tab(4)">
            校园兼职
        </div>

    </div>

    <div id="content">
        <div id="content1">
            <div id="Person">
                <div class="add">
                    <input type="text" v-model="addDetail.u_id" name="u_id" value="" placeholder="用户编号"/>
                    <input type="text" v-model="addDetail.u_tel" name="u_tel" value="" placeholder="手机号"/>
                    <input type="text" v-model="addDetail.username" name="username" value="" placeholder="用户名"/>
                    <input type="text" v-model="addDetail.rel_name" name="rel_name" value="" placeholder="真实姓名"/>
                    <input type="text" name="shengfenz" v-model="addDetail.shengfenz" placeholder="身份证号">
                    <input type="text" name="password" v-model="addDetail.password" placeholder="密码">
                    <button @click="adddetail">新增</button>
                </div>
             <%--   <div id="topbtn">
                    <button class="btn btn-default" type="submit" id="toquit" onclick="window.location.href = 'Eschool/html/login.jsp';">退出当前账号</button>
                </div>--%>
                <a href="http://localhost:8080/SSMProject_war_exploded/Eschool/html/login.jsp">退出</a>
                <table cellpadding="0" cellspacing="0">
                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>用户编号</th>
                        <th>手机号</th>
                        <th>用户名</th>
                        <th>真实姓名</th>
                        <th>身份证号</th>
                        <th>密码</th>
                        <th>  </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr v-for="(user,index) in userList">
                        <td>{{index+1}}</td>
                        <td>{{user.u_id}}</td>
                        <td>{{user.u_tel}}</td>
                        <td>{{user.username}}</td>
                        <td>{{user.rel_name}}</td>
                        <td>{{user.shengfenz}}</td>
                        <td>{{user.password}}</td>
                        <td width="10%"><button @click="deletelist(user.u_id,index)" class="delete">删除</button>
                            <button class="edit" @click="edit(user)">编辑</button></td>
                    </tr>
                    </tbody>
                </table>
                <div id="mask_user" v-if="editlist">
                    <div class="mask">
                        <div class="title01">
                            编辑
                            <span @click="editlist=false">x</span>
                        </div>
                        <div class="content01">
                            <input type="text" v-model="editDetail.u_id" name="u_id" value="" placeholder="用户编号"/>
                            <input type="text" v-model="editDetail.u_tel" name="u_tel" value="" placeholder="手机号"/>
                            <input type="text" v-model="editDetail.username" name="username" value="" placeholder="用户名"/>
                            <input type="text" v-model="editDetail.rel_name" name="rel_name" value="" placeholder="真实姓名"/>
                            <input type="text" name="shengfenz" v-model="editDetail.shengfenz" placeholder="身份证号"/>
                            <input type="text" name="password" v-model="editDetail.password" placeholder="密码"/>
                            <button @click="update(editDetail)">更新</button>
                            <button @click="editlist=false">取消</button>
                        </div>
                    </div>
                </div>
            </div>
            <script>
                var app = new Vue({
                    el: '#Person',
                    data: {
                        userList:[],
                        addDetail: {},
                        editlist: false,
                        editDetail: {},
                        newsList: [{u_id:'123',u_tel:'13100000000',username:'a',rel_name:'A',shengfenz:'350000000000000000',password:'123'}],
                    },
                    mounted() {
                        var _this = this;
                        axios.get("/SSMProject_war_exploded/findAllUser").then(function (response) {
                            _this.userList=response.data;
                            console.log(_this.userList);
                        }).catch(function (reason) {
                            console.log(reason.data);
                        })
                    },
                    methods: {

                        //新增
                        adddetail() {
                            this.newsList.push({
                                u_id:this.addDetail.u_id,
                                u_tel: this.addDetail.u_tel,
                                username: this.addDetail.username,
                                rel_name: this.addDetail.rel_name,
                                shengfenz:this.addDetail.shengfenz,
                                password:this.addDetail.password
                            })
                            var _this = this;
                            axios.post("/SSMProject_war_exploded/addUser",_this.addDetail).then(function (response) {
                                /*  response = $.parseJSON(response);*/
                                /* console.log(response.data);*/
                                console.log(_this.addDetail);
                                console.log(response.data);

                            }).catch(function (reason) {
                                console.log(reason.data);
                            })
                            window.location.reload();
                        },
                        //删除
                        deletelist(u_id, i) {
                            console.log(u_id);
                          /*  this.newsList.splice(i, 1);*/
                            var _this = this;
                            axios.post("/SSMProject_war_exploded/deleteUser?uid="+u_id).then(function () {
                                /*  response = $.parseJSON(response);*/
                                /* console.log(response.data);*/
                                console.log(_this.addDetail);
                            }).catch(function (reason) {
                                console.log(reason.data);
                            })
                            window.location.reload();
                        },
                        //编辑
                        edit(user) {
                            this.editDetail = {
                                u_id:user.u_id,
                                u_tel: user.u_tel,
                                username: user.username,
                                rel_name: user.rel_name,
                                shengfenz:user.shengfenz,
                                password:user.password
                            };
                            this.editlist = true;

                        },
                        //确认更新
                        update(user) {
                            console.log(user);
                            var _this = this;
                            axios.post("/SSMProject_war_exploded/updateUser",user).then(function () {
                            }).catch(function (reason) {
                                console.log(reason.data);
                            })
                            this.editlist = false;
                            window.location.reload()

                        }
                  /*          let Uthis = this
                            for (let i = 0; i < Uthis.newsList.length; i++) {
                                if (Uthis.newsList[i].u_id == this.editDetail.u_id) {
                                    Uthis.newsList[i] = {
                                        u_id:Uthis.editDetail.u_id,
                                        tel: Uthis.editDetail.tel,
                                        username: Uthis.editDetail.username,
                                        realname: Uthis.editDetail.realname,
                                        shengfenz:Uthis.editDetail.shengfenz,
                                        password:Uthis.editDetail.password
                                    };
                                    this.editlist = false
                                }
                            }*/

                    }
                })
            </script>
        </div>
        <div id="content2">
            <div id="CarTable">
                <div class="add">
                    <input type="text" v-model="addDetail.car_id" name="car_id" value="" placeholder="订单号"/>
 <%--                   <input type="text" v-model="addDetail.Publisher" name="Publisher" value="" placeholder="发布者"/>
                    <input type="text" v-model="addDetail.Taker" name="Taker" value="" placeholder="接单者"/>--%>
                    <%--<input type="text" v-model="addDetail.car_style" name="car_style" value="" placeholder="车型"/>--%>
                    <input type="text" v-model="addDetail.car_number" name="car_number" value="" placeholder="车牌号"/>
                    <input type="text" v-model="addDetail.car_start" name="car_start" placeholder="出发地">
                    <input type="text" v-model="addDetail.car_stop" name="car_stop" value="" placeholder="目的地"/>
                    <input type="text" v-model="addDetail.car_start_time" name="car_start_time" value="" placeholder="出发时间"/>
                    <input type="text" v-model="addDetail.car_tel" name="car_tel" placeholder="乘车人联系方式">
                    <input type="text" v-model="addDetail.car_money" name="car_money" placeholder="报酬">
                    <input type="text" v-model="addDetail.car_beizhu" name="car_beizhu" value="" placeholder="备注"/>
                    <button @click="adddetail">新增</button>
                </div>
                <table cellpadding="0" cellspacing="0">
                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>订单号</th>
                <%--        <th>发布者</th>
                        <th>接单者</th>--%>
                    <%--    <th>车型</th>--%>
                        <th>车牌号</th>
                        <th>出发地</th>
                        <th>目的地</th>
                        <th>出发时间</th>
                        <th>乘车人联系方式</th>
                        <th>报酬</th>
                        <th>备注</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr v-for="(car,index) in carList">
                        <td>{{index+1}}</td>
                        <td>{{car.car_id}}</td>
                  <%--      <td>{{car.Publisher}}</td>
                        <td>{{car.Taker}}</td>--%>
                       <%-- <td>{{car.car_style}}</td>--%>
                        <td>{{car.car_number}}</td>
                        <td>{{car.car_start}}</td>
                        <td>{{car.car_stop}}</td>
                        <td>{{car.car_start_time}}</td>
                        <td>{{car.car_tel}}</td>
                        <td>{{car.car_money}}</td>
                        <td>{{car.car_beizhu}}</td>
                        <td width="10%"><button @click="deletelist(car.car_id,index)" class="delete">删除</button><button class="edit" @click="edit(car)">编辑</button></td>

                    </tr>
                       </tbody>
                </table> 
                <div id="mask_car" v-if="editlist">
                    <div class="mask">
                        <div class="title01">
                            编辑
                            <span @click="editlist=false">x</span>
                        </div>
                        <div class="content01">
                            <input type="text" v-model="editDetail.car_id" name="car_id" value="" placeholder="订单号"/>
                       <%--     <input type="text" v-model="editDetail.Publisher" name="Publisher" value="" placeholder="发布者"/>
                            <input type="text" v-model="editDetail.Taker" name="Taker" value="" placeholder="接单者"/>
                            <input type="text" v-model="editDetail.car_style" name="car_style" value="" placeholder="车型"/>--%>
                            <input type="text" v-model="editDetail.car_number" name="car_number" value="" placeholder="车牌号"/>
                            <input type="text" v-model="editDetail.car_start" name="car_start" placeholder="出发地">
                            <input type="text" v-model="editDetail.car_stop" name="car_stop" value="" placeholder="目的地"/>
                            <input type="text" v-model="editDetail.car_start_time" name="car_start_time" value="" placeholder="出发时间"/>
                            <input type="text" v-model="editDetail.car_tel" name="car_tel" placeholder="乘车人联系方式"/>
                            <input type="text" v-model="editDetail.car_money" name="car_money" placeholder="报酬"/>
                            <input type="text" v-model="editDetail.car_beizhu" name="car_beizhu" value="" placeholder="备注"/>
                            <button @click="update">更新</button>
                            <button @click="editlist=false">取消</button>
                        </div>
                    </div>
                </div>
            </div>
            <script type="text/javascript">
                var car_app=new Vue({
                    el:'#CarTable',
                    data:{
                        carList:[],
                        addDetail: {},
                        editlist: false,
                        editDetail: {},
                      /*  Publisher:1,Taker:2,,car_style:true*/
                        newsList: [{car_id:1,car_number:'E123456',car_start:'35#',car_stop:'东三',car_start_time:'10:00',car_tel:'13123456789',car_money:'1',car_beizhu:'无'}],
                    },
                    mounted() {
                        var _this = this;
                        axios.get("/SSMProject_war_exploded/findAllCar").then(function (response) {
                            _this.carList=response.data;
                            console.log(_this.carList);
                        }).catch(function (reason) {
                            console.log(reason.data);
                        })
                    },
                    methods: {
                        //新增
                        adddetail() {
                            this.newsList.push({
                                car_id: this.addDetail.car_id,
                              /*  car_style: this.addDetail.car_style,*/
                                car_number: this.addDetail.car_number,
                                car_start:this.addDetail.car_start,
                                car_stop:this.addDetail.car_stop,
                                car_start_time:this.addDetail.car_start_time,
                                car_tel:this.addDetail.car_tel,
                                car_money:this.addDetail.car_money,
                                car_beizhu:this.addDetail.car_beizhu
                            })
                            var _this = this;

                            axios.post("/SSMProject_war_exploded/insertCar",_this.addDetail).then(function () {
                                console.log(_this.addDetail);
                            }).catch(function (reason) {
                                console.log(reason.data);
                            })
                            window.location.reload();
                        },
                        //删除
                        deletelist(car_id, i) {
                           /* this.newsList.splice(i, 1);*/
                            var _this = this;

                            axios.post("/SSMProject_war_exploded/deleteCar?cid="+car_id).then(function () {
                                console.log(_this.addDetail);
                            }).catch(function (reason) {
                                console.log(reason.data);
                            })
                            window.location.reload();
                        },
                        //编辑
                        edit(car) {
                            this.editDetail = {
                                car_id: car.car_id,
                              /*  Publisher:car.Publisher,
                                Taker:car.Taker,
                                car_style: car.car_style,*/
                                car_number: car.car_number,
                                car_start:car.car_start,
                                car_stop:car.car_stop,
                                car_start_time:car.car_start_time,
                                car_tel: car.car_tel,
                                car_money:car.car_money,
                                car_beizhu:car.car_beizhu,
                            };
                            this.editlist = true;
                        },
                        //确认更新
                        update() {
                            var _this=this;
                            axios.post("/SSMProject_war_exploded/updateCar",_this.editDetail).then(function () {

                            }).catch(function (reason) {
                                console.log(reason.data);
                            })
                            this.editlist = false;
                            window.location.reload();
                        }
                    }
                })
            </script>


        </div>
        <div id="content3">
            <div id="KdTable">
                <div class="add">
                    <input type="text" v-model="addDetail.kd_id" name="kd_id" value="" placeholder="订单号"/>
<%--                    <input type="text" v-model="addDetail.Publisher" name="Publisher" value="" placeholder="发布者"/>
                    <input type="text" v-model="addDetail.Taker" name="Taker" value="" placeholder="接单者"/>--%>
                    <input type="text" v-model="addDetail.kd_number" name="kd_number" value="" placeholder="快递单号"/>
                    <input type="text" v-model="addDetail.kd_company" name="kd_company" value="" placeholder="快递公司"/>
                    <input type="text" v-model="addDetail.kd_name" name="kd_name" placeholder="快递发布者">
                    <input type="text" v-model="addDetail.kd_tel" name="kd_tel" value="" placeholder="发布者联系方式"/>
                    <input type="text" v-model="addDetail.kd_adress" name="kd_adress" value="" placeholder="发布者地址"/>
             <%--       <input type="text" v-model="addDetail.Kd_beizhu" name="kd_beizhu" placeholder="备注"/>--%>
                    <input type="text" v-model="addDetail.kd_money" name="kd_money" placeholder="报酬"/>
                    <input type="text" v-model="addDetail.latest_time" name="latest_time" value="" placeholder="取快递最迟时间"/>
                    <button @click="adddetail">新增</button>
                </div>
                <table cellpadding="0" cellspacing="0">
                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>订单号</th>
               <%--         <th>发布者</th>
                        <th>接单者</th>--%>
                        <th>快递单号</th>
                        <th>快递公司</th>
                        <th>快递发布者</th>
                        <th>发布者联系方式</th>
                        <th>发布者地址</th>
                 <%--       <th>备注</th>--%>
                        <th>报酬</th>
                        <th>取快递最迟时间</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr v-for="(kd,index) in kdList">
                        <td>{{index+1}}</td>
                        <td>{{kd.kd_id}}</td>
<%--                        <td>{{kd.Publisher}}</td>
                        <td>{{kd.Taker}}</td>--%>
                        <td>{{kd.kd_number}}</td>
                        <td>{{kd.kd_company}}</td>
                        <td>{{kd.kd_name}}</td>
                        <td>{{kd.kd_tel}}</td>
                        <td>{{kd.kd_adress}}</td>
                       <%-- <td>{{kd.Kd_beizhu}}</td>--%>
                        <td>{{kd.kd_money}}</td>
                        <td>{{kd.latest_time}}</td>
                        <td width="10%"><button @click="deletelist(kd.kd_id,index)" class="delete">删除</button><button class="edit" @click="edit(kd)">编辑</button>
                        </td>
                    </tr>
                        </tbody>
                </table>
                <div id="mask_kd" v-if="editlist">
                    <div class="mask">
                        <div class="title01">
                            编辑
                            <span @click="editlist=false">x</span>
                        </div>
                        <div class="content01">
                            <input type="text" v-model="editDetail.kd_id" name="kd_id" value="" placeholder="订单号"/>
                          <%--  <input type="text" v-model="editDetail.Publisher" name="Publisher" value="" placeholder="发布者"/>
                            <input type="text" v-model="editDetail.Taker" name="Taker" value="" placeholder="接单者"/>--%>
                            <input type="text" v-model="editDetail.kd_number" name="kd_number" value="" placeholder="快递单号"/>
                            <input type="text" v-model="editDetail.kd_company" name="kd_company" value="" placeholder="快递公司"/>
                            <input type="text" v-model="editDetail.kd_name" name="kd_name" placeholder="快递发布者">
                            <input type="text" v-model="editDetail.kd_tel" name="kd_tel" value="" placeholder="发布者联系方式"/>
                            <input type="text" v-model="editDetail.kd_adress" name="kd_adress" value="" placeholder="发布者地址"/>
                          <%--  <input type="text" v-model="editDetail.Kd_beizhu" name="Kd_beizhu" placeholder="备注">--%>
                            <input type="text" v-model="editDetail.kd_money" name="kd_money" placeholder="报酬">
                            <input type="text" v-model="editDetail.latest_time" name="latest_time" value="" placeholder="取快递最迟时间"/>
                            <button @click="update">更新</button>
                            <button @click="editlist=false">取消</button>
                        </div>
                    </div>
                </div>
            </div>
            <script type="text/javascript">

                var Kd_app=new Vue({
                    el:'#KdTable',
                    data:{
                        kdList:[],
                        addDetail: {},
                        editlist: false,
                        editDetail: {},
                      /*  Publisher:2,Taker:4,,Kd_beizhu:'无'*/
                        newsList: [{kd_id:1,kd_number:'023456',kd_company:'圆通',kd_name:'礼物',kd_tel:'13123456789',kd_adress:'35#123',kd_money:1,latest_time:'7 17pm'}],
                    },
                    mounted() {

                        var _this=this;
                        axios.get("/SSMProject_war_exploded/findKdAll").then(function (response) {
                            _this.kdList=response.data;
                        }).catch(function (reason) {
                            console.log(reason.data);
                        })
                    },
                    methods: {

                        //新增
                        adddetail() {
                            this.newsList.push({
                                kd_id: this.addDetail.kd_id,
                              /*  Publisher:this.addDetail.Publisher,
                                Taker:this.addDetail.Taker,*/
                                kd_number: this.addDetail.kd_number,
                                kd_company: this.addDetail.kd_company,
                                kd_name:this.addDetail.kd_name,
                                kd_tel:this.addDetail.kd_tel,
                                kd_adress: this.addDetail.kd_adress,
                            /*    Kd_beizhu: this.addDetail.Kd_beizhu,*/
                                kd_money: this.addDetail.kd_money,
                                latest_time:this.addDetail.latest_time,
                            })

                            var _this=this;
                            axios.post("/SSMProject_war_exploded/insertKd",_this.addDetail).then(function (response) {
                                _this.kdList=response.data;
                            }).catch(function (reason) {
                                console.log(reason.data);
                            })
                            window.location.reload();



                        },
                        //删除
                        deletelist(kd_id, i) {
                        /*    this.newsList.splice(i, 1);*/
                            var _this=this;
                            axios.post("/SSMProject_war_exploded/deleteKdId?kid="+kd_id).then(function () {

                            }).catch(function (reason) {
                                console.log(reason.data);
                            })
                            window.location.reload();

                        },
                        //编辑
                        edit(kd) {
                            this.editDetail = {
                                kd_id: kd.kd_id,
                         /*       Publisher:kd.Publisher,
                                Taker:kd.Taker,*/
                                kd_number: kd.kd_number,
                                kd_company: kd.kd_company,
                                kd_name:kd.kd_name,
                                kd_tel:kd.kd_tel,
                                kd_adress: kd.kd_adress,
                     /*           Kd_beizhu: kd.Kd_beizhu,*/
                                kd_money:kd.kd_money,
                                latest_time:kd.latest_time
                            };
                            this.editlist = true;

                        },
                        //确认更新
                        update() {
                            var _this=this;
                            axios.post("/SSMProject_war_exploded/updateKdId",_this.editDetail).then(function () {

                            }).catch(function (reason) {
                                console.log(reason.data);
                            })
                            this.editlist = false;
                            window.location.reload()

                        }
                    }
                })
            </script>






        </div>
        <div id="content4">
            <div id="WorkTable">
                <div class="add">
                    <input type="text" v-model="addDetail.s_id" name="s_id" value="" placeholder="兼职ID"/>
          <%--          <input type="text" v-model="addDetail.Publisher" name="Publisher" value="" placeholder="发布者"/>
                    <input type="text" v-model="addDetail.Taker" name="Taker" value="" placeholder="接单者"/>--%>
                    <input type="text" v-model="addDetail.s_name" name="s_name" value="" placeholder="商家名"/>
                    <input type="text" v-model="addDetail.s_adress" name="s_adress" value="" placeholder="店铺地址"/>
                    <input type="text" v-model="addDetail.s_tel" name="s_tel" value="" placeholder="商家电话"/>
                    <input type="text" v-model="addDetail.work_time" name="work_time" value="" placeholder="兼职时间"/>
                    <input type="text" v-model="addDetail.work_content" name="work_content" value="" placeholder="兼职内容"/>
                    <input type="text" v-model="addDetail.work_money" name="work_money" value="" placeholder="兼职报酬"/>
                    <input type="text" v-model="addDetail.need_person" name="need_person" value="" placeholder="需求人数"/>
                    <input type="text" v-model="addDetail.beizhu" name="beizhu" value="" placeholder="备注"/>
                    <button @click="adddetail">新增</button>
                </div>
                <table cellpadding="0" cellspacing="0">
                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>兼职ID</th>
                  <%--      <th>发布者</th>
                        <th>接单者</th>--%>
                        <th>商家名</th>
                        <th>店铺地址</th>
                        <th>商家电话</th>
                        <th>兼职时间</th>
                        <th>兼职内容</th>
                        <th>兼职报酬</th>
                        <th>需求人数</th>
                        <th>备注</th>
                        <th>  </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr v-for="(work,index) in jzList">
                        <td>{{index+1}}</td>
                        <td>{{work.s_id}}</td>
               <%--         <td>{{work.Publisher}}</td>
                        <td>{{work.Taker}}</td>--%>
                        <td>{{work.s_name}}</td>
                        <td>{{work.s_adress}}</td>
                        <td>{{work.s_tel}}</td>
                        <td>{{work.work_time}}</td>
                        <td>{{work.work_content}}</td>
                        <td>{{work.work_money}}</td>
                        <td>{{work.need_person}}</td>
                        <td>{{work.beizhu}}</td>
                        <td width="10%"><button @click="deletelist(work.s_id,index)" class="delete">删除</button><button class="edit" @click="edit(work)">编辑</button>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <div id="mask_work" v-if="editlist">
                    <div class="mask">
                        <div class="title01">
                            编辑
                            <span @click="editlist=false">x</span>
                        </div>
                        <div class="content01">
                            <input type="text" v-model="editDetail.s_id" name="s_id" value="" placeholder="兼职ID"/>
                      <%--      <input type="text" v-model="editDetail.Publisher" name="Publisher" value="" placeholder="发布者"/>
                            <input type="text" v-model="editDetail.Taker" name="Taker" value="" placeholder="接单者"/>--%>
                            <input type="text" v-model="editDetail.s_name" name="s_name" value="" placeholder="商家名"/>
                            <input type="text" v-model="editDetail.s_adress" name="s_adress" value="" placeholder="店铺地址"/>
                            <input type="text" v-model="editDetail.s_tel" name="s_tel" value="" placeholder="商家电话"/>
                            <input type="text" v-model="editDetail.work_time" name="work_time" value="" placeholder="兼职时间"/>
                            <input type="text" v-model="editDetail.work_content" name="work_content" value="" placeholder="兼职内容"/>
                            <input type="text" v-model="editDetail.work_money" name="work_money" value="" placeholder="兼职报酬"/>
                            <input type="text" v-model="editDetail.need_person" name="need_person" value="" placeholder="需求人数"/>
                            <input type="text" v-model="editDetail.beizhu" name="beizhu" value="" placeholder="备注"/>
                            <button @click="update">更新</button>
                            <button @click="editlist=false">取消</button>
                        </div>
                    </div>
                    <script type="text/javascript">
                        var work_app = new Vue({
                            el: '#WorkTable',
                            data: {
                                jzList:[],
                                addDetail: {},
                                editlist: false,
                                editDetail: {},
                                //Publisher:2,Taker:4,
                                newsList: [{s_id:'123456',s_name:'小吃店',s_adress:'玫瑰2楼',s_tel:'13123456789',work_time:'FriNoon',work_content:'希望',work_money:'20/h',need_person:'5',beizhu:'无'}],
                            },
                            mounted() {
                                var _this=this;
                                axios.get("/SSMProject_war_exploded/findJianZhiAll").then(function (response) {
                                    _this.jzList=response.data;
                                }).catch(function (reason) {
                                    console.log(reason.data);
                                })

                            },
                            methods: {

                                //新增
                                adddetail() {
                                    this.newsList.push({
                                        s_id: this.addDetail.s_id,
                                    /*    Publisher:this.addDetail.Publisher,
                                        Taker:this.addDetail.Taker,*/
                                        s_name: this.addDetail.s_name,
                                        s_adress:this.addDetail.s_adress,
                                        s_tel:this.addDetail.s_tel,
                                        work_time: this.addDetail.work_time,
                                        work_content: this.addDetail.work_content,
                                        work_money:this.addDetail.work_money,
                                        need_person:this.addDetail.need_person,
                                        beizhu:this.addDetail.beizhu,
                                    })
                                    var _this=this;
                                    axios.post("/SSMProject_war_exploded/jianZhifabu",_this.addDetail).then(function (response) {
                                    }).catch(function (reason) {
                                        console.log(reason.data);
                                    })
                                    window.location.reload()



                                },
                                //删除
                                deletelist(s_id, i) {
                             /*       this.newsList.splice(i, 1);*/
                                    var _this=this;
                                    axios.post("/SSMProject_war_exploded/deleteJianZhi?s_id="+s_id).then(function () {
                                    }).catch(function (reason) {
                                        console.log(reason.data);
                                    })
                                    window.location.reload()

                                },
                                //编辑
                                edit(work) {
                                    this.editDetail = {
                                        s_id: work.s_id,
                                  /*      Publisher:work.Publisher,
                                        Taker:work.Taker,*/
                                        s_name: work.s_name,
                                        s_adress: work.s_adress,
                                        s_tel:work.s_tel,
                                        work_time:work.work_time,
                                        work_content: work.work_content,
                                        work_money: work.work_money,
                                        need_person:work.need_person,
                                        beizhu:work.beizhu,
                                    };
                                    this.editlist = true;

                                },
                                //确认更新
                                update() {
                                    var _this=this;
                                    axios.post("/SSMProject_war_exploded/updateJianZhi",_this.editDetail).then(function () {
                                    }).catch(function (reason) {
                                        console.log(reason.data);
                                    })
                                    this.editlist = false;
                                    window.location.reload()
                                }
                            }
                        })
                    </script>
                </div>

            </div>
            <script language="javascript">
                function Tab(num)
                {
                    var i;
                    for(i=1;i<=4;i++)
                    {
                        if(i==num)
                        {
                            document.getElementById("content"+i).style.display="block";
                            document.getElementById("tab"+i).style.background="white";
                            document.getElementById("tab"+i).style.color="rgb(11,167,163)";
                        }
                        else
                        {
                            document.getElementById("content"+i).style.display="none";
                            document.getElementById("tab"+i).style.background="transparent";
                            document.getElementById("tab"+i).style.color="white";
                        }
                    }
                }
            </script>

        </div>
</body>
</html>
