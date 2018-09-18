<%--
  Created by IntelliJ IDEA.
  User: hexun
  Date: 2018/9/12
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%
    String path = request.getContextPath()+"/";
    request.getSession().setAttribute("path",path);
%>

<script src="${path}js/jquery-1.7.2.min.js"></script>
<script src="${path}js/jquery.bxslider.min.js"></script>
<script src="${path}js/html5.js"></script>
<script src="${path}layui/layui.js"></script>
<script src="${path}layui/lay/dest/layui.all.js"></script>
<link rel="stylesheet" href="${path}layui/css/layui.css"  media="all">
<link rel="stylesheet" href="${path}css/pay.css"  media="all">
<script type="text/javascript">
    var path=${path};
    if(!navigator.cookieEnabled){
        alert("没有启用cookie，请先设置cookie为启用状态 ");
    }
</script>
