 new Vue({
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
            carList:[]
        },
    methods:{
            findAllCar:function (carId) {
                var _this = this;
                axios.post("/SSMProject_war_exploded/findByCategoryId?carId="+carId).then(function (response) {
                  /*  response = $.parseJSON(response);*/
                   /* console.log(response.data);*/
                    _this.carList=response.data;
                    console.log(_this.carList);
                }).catch(function (reason) {
                    console.log(reason.data);
                })

            }
    },
    created:function () {
            this.findAllCar(6);

    }
})
