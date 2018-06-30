<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: ilyar
  Date: 2018/6/26
  Time: 19:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>头部</title>
</head>
<body>
<nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="Login"><%=request.getSession().getAttribute("username")%></a>
    </div>
    <div style="color: white;
    padding: 15px 50px 5px 50px;
    float: right;
    font-size: 16px;"> 当前时间: <%
        SimpleDateFormat df=new SimpleDateFormat("yyyy:MM:dd HH:mm");
        String s=df.format(new Date());
        out.print(s);
    %>&nbsp;&nbsp;&nbsp; <a href="Quit" class="btn btn-danger square-btn-adjust">注销</a> </div>
</nav>

<nav class="navbar-default navbar-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav" id="main-menu" >
            <li class="text-center">
                <img src="assets/img/find_user.png" class="user-image img-responsive"/>
            </li>

            <!--
            <li>
                <a class="active-menu"  href="index.jsp"><i class="fa fa-dashboard fa-3x"></i> Dashboard</a>
            </li>
            -->
            <li>
                <a href="Login"><i class="fa fa-dashboard fa-3x"></i> 基本信息</a>

            </li>
            <% if(request.getSession().getAttribute("type").equals("user")) { %>
            <li>
                <a  href="Show"><i class="fa fa-desktop fa-3x"></i> 教室预约</a>
            </li>
            <% }else if(request.getSession().getAttribute("type").equals("manager")){ %>
            <li>
                <a  href="blank.jsp"><i class="fa fa-qrcode fa-3x"></i> 管理员审核</a>
            </li>
            <li  >
                <a   href="blank.jsp"><i class="fa fa-bar-chart-o fa-3x"></i> 管理员借用</a>
            </li>
            <%}%>
            <%--<li  >--%>
                <%--<a  href="table.jsp"><i class="fa fa-table fa-3x"></i> Table Examples</a>--%>
            <%--</li>--%>
            <%--<li  >--%>
                <%--<a  href="form.jsp"><i class="fa fa-edit fa-3x"></i> Forms </a>--%>
            <%--</li>--%>
            <li  >
                <a   href="Quit"><i class="fa fa-bolt fa-3x"></i> 退出</a>
            </li>
            <%--<li  >--%>
                <%--<a  href="blank.jsp"><i class="fa fa-square-o fa-3x"></i> Blank Page</a>--%>
            <%--</li>--%>
        </ul>

    </div>

</nav>
</body>
</html>
