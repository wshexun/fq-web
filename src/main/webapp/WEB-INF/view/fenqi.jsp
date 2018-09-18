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
            <td style="text-align:center; font-size:1.2em;">选择分期</td>
        </tr>
    </table>
</div>
<!--End Header End-->
<div class="login_bg">
    <form>
        <div class="log_tab">
            <div class="title_text_long">
                <div style="height: 10px;"></div>
                <table border="0" style="width:100%; font-size:1em;" cellspacing="0" cellpadding="0">
                    <tr>
                        <td valign="middle" width="100%" >
                            <div style="width:100%;word-break:break-all;">请根据您本人的持卡情况选择合适的分期方式</div>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="log_c">
                <table border="0" style="width:100%; font-size:1.4em;" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="100" style="text-indent:8px;">选择银行：</td>
                        <td>
                            <select id="bank" name="bank" class="l_ipt">
                                <option value="3">中国银行</option>
                                <option value="6">中信银行</option>
                                <option value="9">民生银行</option>
                                <option value="12">建设银行</option>
                            </select>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="log_c">
                <table border="0" style="width:100%; font-size:1.4em;" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="100" style="text-indent:8px;">分期期数：</td>
                        <td>
                            <select id="count" name="count" class="l_ipt">
                                <option value="3">3</option>
                                <option value="6">6</option>
                                <option value="12">12</option>
                            </select>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="log_c">
                <div style="width: 100%">
                    <table border="0" style="width:100%; font-size:1.4em;" cellspacing="0" cellpadding="0">
                        <tr class="list-height">
                            <td width="120" style="text-indent:8px;">费率%：</td>
                            <td>xx</td>
                        </tr>
                        <tr class="list-height">
                            <td width="120" style="text-indent:8px;">每期应还：</td>
                            <td>1234</td>
                        </tr>
                        <tr class="list-height">
                            <td width="120" style="text-indent:8px;">每期手续费：</td>
                            <td>122</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <input type="hidden" value="1" name="type" id="fenqi_type">
        <table border="0" style="width:70%; margin:5% auto 0 auto;" cellspacing="0" cellpadding="0">
            <tr height="60">
                <td><input type="submit" id="submit_fenqi_sure" value="提交" readonly class="btn btn_left"></td>
                <td><input type="submit" id="submit_fenqi_cancel" value="不分期" readonly class="btn btn_right"></td>
            </tr>
        </table>
    </form>
</div>
<script src="${path}js/pay.js"></script>
</body>
</html>
