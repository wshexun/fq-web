
$("#submit_sure").click(function () {
    var pay=$("#pay").val();
    var massage=$("#massage").val();
    if(isNUll(pay)){
        $("#pay").focus();
        layer.msg("请输入金额",{time:1000,icon:2});
        return false;
    }
    $("form").attr({"action":path+"fenqi","method":"post"}).submit();
});



function isNUll(str){
    if(str==null||str==undefined||str.length==0){
        return true
    }else{
        return false;
    }
}

//分期
$("#submit_fenqi_sure").click(function () {
    $("form").attr({"action":path+"info","method":"post"}).submit();
});
//不分期
$("#submit_fenqi_cancel").click(function () {
    $("#fenqi_type").val(-1);
    $("form").attr({"action":path+"info","method":"post"}).submit();
});


$("#submit_ok").click(function () {
    var card=$("#card").val();
    var cvn=$("#cvn").val();
    var validate=$("#validate").val();
    var phone=$("#phone").val();
    var userName=$("#userName").val();
    var userId=$("#userId").val();
    if(isNUll(card)){
        $("#card").focus();
        layer.msg("请输入银行卡卡号",{time:1000,icon:2});
        return false;
    }
    if(isNUll(cvn)){
        $("#cvn").focus();
        layer.msg("请输入CVN2",{time:1000,icon:2});
        return false;
    }
    if(isNUll(validate)){
        $("#validate").focus();
        layer.msg("请输入卡片有效期",{time:1000,icon:2});
        return false;
    }
    if(isNUll(phone)){
        $("#phone").focus();
        layer.msg("请输入预留手机号码",{time:1000,icon:2});
        return false;
    }
    if(isNUll(userName)){
        $("#userName").focus();
        layer.msg("请输入姓名",{time:1000,icon:2});
        return false;
    }
    if(isNUll(userId)){
        $("#userId").focus();
        layer.msg("请输入身份证号码",{time:1000,icon:2});
        return false;
    }
    $("form").attr({"action":path+"sure","method":"post"}).submit();
});

//获取验证码
$("#getCode").click(function () {
    if(wait!=0){
        return;
    }
    var phone=$("#currentPhone").text();
    if(isNUll(phone)){
        alert("无法获取预留手机号码，请返回填写资料信息");
        return false;
    }
    $.ajax({
        url:path+"sendSecond",
        type:"post",
        dataType:"json",
        data:{"phone":phone},
        success:function (data) {
            if(data>0){
                interval=setInterval(function(){
                    getSecond(phone)
                },1000);
            }else{
                if(wait<60){
                    return false;
                }
                time($("#getCode"));
            }
        }
    });

});



function time(o) {
    if (wait == 0) {
        o.css({"disabled":false,"color":"#FFF"});
        o.text("获取验证码");
        wait = 60;
    } else {
        o.css("disabled",true);
        o.text("重新发送(" + wait + ")");
        wait--;
        setTimeout(function() {
                time(o)
            },
            1000)
    }
}

$("#submit_pay").click(function () {
    $("form").attr({"action":path+"validate","method":"post"}).submit();
});
