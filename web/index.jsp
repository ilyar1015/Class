<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>教室管理系统</title>
	<link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<body>
	<div class="head">
		<span class="head-font">
			教师管理系统
		</span>
	</div>
	<form action="Login" id="fid" class="content" method="post">
		<div class="entrance">
			<select name="type">
				<option value="user">用户</option>
				<option value="manager">管理员</option>
			</select>
			<input name="username" type="texe" name="admin" placeholder="admin" class="input1" id="input1">
			<img src="image/笑脸.png" class="input-img1">
			<input name="password" type="password" name="key" placeholder="password" class="input2" id="inout2">
			<img src="image/密码.png" class="input-img2">
			<label class="input3">
				<input type="checkbox" name="">记住密码
				<input type="checkbox" name="" style="margin-left: 75px;">忘记密码
			</label>
				<button class="button" id="btn">登 录</button>
				<%if(request.getSession().getAttribute("login")!=null){%>
				<%=request.getSession().getAttribute("login")%>
				<%}%>

		</div>
	</form>
</body>
<script type="text/javascript">
	input1obj=document.getElementById('input1');
	input1obj.onfocus=function(){
		this.style.color="#555555";
	}

	input2obj=document.getElementById('input2');
	input2obj.onfocus=function(){
        this.style.color="#555555";
	}

</script>
</html>