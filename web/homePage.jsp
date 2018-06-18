<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>教室管理系统</title>
	<link rel="stylesheet" type="text/css" href="css/homePage.css">
</head>
<body>
	<div class="head">
		<span class="head-font">
			教师管理系统
		</span>
		<div class="admin">
            <%@include file="massage.jsp"%>
		</div>
	</div>
	<div class="sidebar">
		<s:include value="list.jsp"></s:include>
	</div>
	<div class="content">
		<div class="contents">
			<a href="classroom.jsp" target="_self" class="content1"><div class="position1"><img src="image/查询.png"><span class="position2">教室查询</span></div></a>
			<a href="classOrder.jsp" target="_self" class="content2"><div class="position1"><img src="image/申请.png"><span class="position2">借用申请</span></div></a>
			<a href="#" target="_self" class="content3"><div class="position1"><img src="image/旗子.png"><span class="position2">学生维权</span></div></a>
			<a href="#" target="_self" class="content4"><div class="position1"><img src="image/聊天.png"><span class="position2">相约西师</span></div></a>
			<a href="#" target="_self" class="content5"><div class="position1"><img src="image/管理.png"><span class="position2">后台管理</span></div></a>
			<a href="#" target="_self" class="content6"><div class="position1"><img src="image/小括号.png"><span class="position2">待开发模块</span></div></a>
		</div>
		<a href="#" target="_blank" class="content7"><div class="position3"><img src="image/微信.png" class="position4"><div class="position5">技术支持</div></div></a>
	</div>
</body>
</html>