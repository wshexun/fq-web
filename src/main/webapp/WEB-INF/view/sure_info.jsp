<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<jsp:include page="common.jsp"></jsp:include>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame
    Remove this if you use the .htaccess -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>...</title>
    <meta name="description" content="" />
    <meta name="author" content="Administrator" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0" />
    <!-- Replace favicon.ico & apple-touch-icon.png in the root of your domain and delete these references -->

    <link rel="stylesheet" href="${path}style/base.css" type="text/css" media="screen" title="no title" charset="utf-8"/>
    <link rel="stylesheet" href="${path}style/common.css" type="text/css" media="screen" title="no title" charset="utf-8"/>
    <link rel="stylesheet" href="${path}style/device.css" type="text/css" media="screen" title="no title" charset="utf-8"/>
    <link rel="stylesheet" href="${path}style/jquery.bxslider.css" type="text/css" media="screen" title="no title" charset="utf-8"/>
    <!--[if IE]>
    <script src="${path}js/html5.js"></script>
    <![endif]-->
    <script>
        var interval=null;
        var wait=0;
        function getSecond(phone) {
            var o=$("#getCode");
            $.ajax({
                url:path+"getSecond",
                type:"post",
                dataType:"json",
                data:{"phone":phone},
                success:function (data) {
                    wait=data;
                    if(data>0){
                        o.css("opacity","0.8");
                        o.text("重新发送(" + data + ")");
                    }else{
                        o.css("opacity","1");
                        o.text("获取验证码");
                        clearInterval(interval);
                    }
                }
            });
        }
        $(document).ready(function() {
            $('.bxslider').bxSlider({
                auto : true,
                controls : false,
                touchEnabled : true,
            });
            var phone=$("#currentPhone").text();
            if(isNUll(phone)){
                alert("无法获取预留手机号码，请返回填写资料信息");
                return false;
            }
            interval=setInterval(function(){
                getSecond(phone)
            },1000);
        });
    </script>

</head>
<body>
<!--Begin Header Begin-->
<div class="back_bg">
    <table border="0" style="width:92%; color:#FFF; margin:0 auto;" cellspacing="0" cellpadding="0">
        <tr>
            <td style="text-align:center; font-size:1.2em;">确认付款</td>
        </tr>
    </table>
</div>
<!--End Header End-->
<div class="login_bg">
    <form>
        <div class="log_tab">
            <div class="log_c">
                <table border="0" style="width:100%; font-size:1.4em;" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="100" style="text-indent:8px;">收款商户：</td>
                        <td><input type="text" value="自如" placeholder="" class="l_ipt"></td>
                    </tr>
                    <tr>
                        <td width="100" style="text-indent:8px;">付款卡：</td>
                        <td><input type="text" value="后四位1234" placeholder="" class="l_ipt"></td>
                    </tr>
                    <tr>
                        <td width="100" style="text-indent:8px;">交易金额：</td>
                        <td><input type="text" value="1222.50元" placeholder="" class="l_ipt"></td>
                    </tr>
                    <tr>
                        <td width="100" style="text-indent:8px;">分期数：</td>
                        <td><input type="text" value="6期，每期555.5元（不含手续费）/每月" placeholder="" class="l_ipt"></td>
                    </tr>
                    <tr>
                        <td width="100" style="text-indent:8px;">费率：</td>
                        <td><input type="text" value="0.55%/每月，20.5元/每月" placeholder="" class="l_ipt"></td>
                    </tr>
                </table>
            </div>
            <div class="log_c">
                <div style="width: 100%;font-size: 1.4em;text-indent: 8px;">已向<span id="currentPhone">${phone}</span>发送短信</div>
                <table border="0" style="width:100%; font-size:1.4em;" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="100" style="text-indent:8px;">验证码：</td>
                        <td style="position:relative;"><input type="text" value="" placeholder="" class="l_ipt" style="width:70%;" id="validateCode" name="validateCode">
                            <span class="l_tel"><a id="getCode">获取验证码</a></span>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <%--<input type="hidden" id="currentPhone" value="${phone}">--%>
        <table border="0" style="width:91%; margin:5% auto 0 auto;" cellspacing="0" cellpadding="0">
            <tr height="60">
                <td><input id="submit_pay" type="submit" value="提交" readonly class="l_btn"></td>
            </tr>
        </table>
    </form>
</div>
<script src="${path}js/pay.js"></script>
</body>
</html>
