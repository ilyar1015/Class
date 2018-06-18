<%--
  Created by IntelliJ IDEA.
  User: ilyar
  Date: 2018/6/17
  Time: 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List</title>
</head>
<body>
    <div class="block">
        <span class="block1"><a href="Homepage" target="_self" class="block-a"><img src="../image/桌面.png" class="block-img"><span class="block-word">回到首页</span></a></span>
        <span class="block2"><a href="Classorder" target="_self" class="block-a"><img src="../image/查询.png" class="block-img"><span class="block-word">教室预约</span></a></span>
        <%if(request.getSession().getAttribute("type").equals("manager")){%>
        <span class="block3"><a href="Overview" target="_self" class="block-a"><img src="../image/菜单.png" class="block-img"><span class="block-word">预约管理</span></a></span>
        <%}%>
        <span class="block4"><a href="Quit" target="_self" class="block-a"><img src="../image/电源.png" class="block-img"><span class="block-word">退出系统</span></a></span>
    </div>
</body>
</html>
