function orderTaken(){//接单后显示
    var x=document.getElementsByClassName("haveTaken");
    for(var i=0;i<x.length;i++){
        x[i].style.display="block";
    }
    document.getElementById("toTakeOrder").innerHTML="已接单";
}
function gotologin(){//登录
    window.location.href='1登录.html';
}
function gotosignup(){//注册
    window.location.href='2注册.html';
}
function gotomypage(){//个人中心
    window.location.href='4个人资料.html';
}
function gotohomepage(){//主页
    window.location.href='8-列表-顺风车总.html';
}
function gotoquit(){//退出
    window.location.href='1登录.html';
}
function gotoli1(){//顺风车
    window.location.href='8-列表-顺风车总.html';
}
function gotoli2(){//代取快递
    window.location.href='8-列表-快递代取.html';
}
function gotoli3(){//校园兼职
    window.location.href='8-列表-校园兼职.html';
}
function gotoli4(){//个人资料
    window.location.href='4个人资料.html';
}
function gotoli5(){//我的订单
    window.location.href='5-我的订单-总.html';
}
function gotoli6(){//帮助
    window.location.href='3帮助.html';
}
