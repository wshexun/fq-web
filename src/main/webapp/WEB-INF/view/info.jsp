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
        $(document).ready(function() {
            $('.bxslider').bxSlider({
                auto : true,
                controls : false,
                touchEnabled : true,
            });

        });
    </script>

</head>
<body>
<!--Begin Header Begin-->
<div class="back_bg">
    <table border="0" style="width:92%; color:#FFF; margin:0 auto;" cellspacing="0" cellpadding="0">
        <tr>
            <td style="text-align:center; font-size:1.2em;">信息资料</td>
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
                        <td width="80" style="text-indent:8px;">卡号：</td>
                        <td><input type="text" value="" placeholder="" id="card" name="card" class="l_ipt"></td>
                    </tr>
                </table>
            </div>
            <div class="log_c">
                <table border="0" style="width:100%; font-size:1.4em;" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="80" style="text-indent:8px;">cvn2：</td>
                        <td><input type="text" value="" placeholder=""  id="cvn" name="cvn"  class="l_ipt"></td>
                    </tr>
                </table>
            </div>
            <div class="log_c">
                <table border="0" style="width:100%; font-size:1.4em;" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="90" style="text-indent:8px;">有效期：</td>
                        <td><input type="text" value="" placeholder="" id="validate"  name="validate" class="l_ipt"></td>
                    </tr>
                </table>
            </div>
            <div class="log_c">
                <table border="0" style="width:100%; font-size:1.4em;" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="120" style="text-indent:8px;">预留手机号：</td>
                        <td><input type="text" value="" placeholder="" id="phone"  name="phone" class="l_ipt"></td>
                    </tr>
                </table>
            </div>
            <div class="log_c">
                <table border="0" style="width:100%; font-size:1.4em;" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="80" style="text-indent:8px;">姓名：</td>
                        <td style="position:relative;"><input type="text" value="" placeholder="" id="userName" name="userName"  class="l_ipt" style="width:70%;" id="tels">
                        </td>
                    </tr>
                </table>
            </div>
            <div class="log_c" style="border-bottom:0;">
                <table border="0" style="width:100%; font-size:1.4em;" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="100" style="text-indent:8px;">身份证号：</td>
                        <td><input type="text" value="" placeholder="" id="userId" name="userId"  class="l_ipt"></td>
                    </tr>
                </table>
            </div>
        </div>
        <table border="0" style="width:91%; margin:5% auto 0 auto;" cellspacing="0" cellpadding="0">
            <tr height="60">
                <td><input id="submit_ok" type="submit" value="提交" readonly class="l_btn"></td>
            </tr>
        </table>
    </form>
</div>
<script src="${path}js/pay.js"></script>
</body>
</html>
