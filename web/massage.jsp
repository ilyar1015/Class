<%--
  Created by IntelliJ IDEA.
  User: ilyar
  Date: 2018/6/17
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>massage</title>
</head>
<body>
    <d<div class="admin-logo">
        <img src="image/管理员.png" style="margin-top: -20px">
        <img src="image/下箭头.png" style="float: right; margin-right: 40px;">
        <span class="administrator"><%if(request.getSession().getAttribute("type").equals("manager")){out.print("管理员");}else{out.print("用户");}%><br><%=request.getSession().getAttribute("username")%></span>
    </div>
    <div class="questions">
        <span class="question-center">疑问中心</span>
        <img src="image/下箭头.png" style="float: right; margin-right: 35px;">
    </div>
</body>
</html>
