<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>教室管理系统</title>
	<link rel="stylesheet" type="text/css" href="css/classOrder.css">

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
		<%--<s:include value="list.jsp"></s:include>--%>
		<%@include file="list.jsp"%>
	</div>
	<div class="content">
		<div class="overview">
			<div class="head1"><span class="head11"> &nbsp 预约申请</span></div>
			<div class="head2">
				<hr class="hrleft"><span class="headfont"> &nbsp预约人资料</span><hr class="hrright">
					<div class="div1">
						<div class="div1_img"><img src="..//image//头像.jpg" id="imgid"></div>
						<div class="div1_input">
							<form action="" id="fid">
								姓名： <input type="text" name="" class="input1">
								学院： <input type="text" name="" class="input1" style="width: 205px;"><br>
							 	电话： <input type="text" name="" class="input1">
								借用日期： <input type="text" name="" class="input1" style="width: 150px;"><div class="calendar"><img src="..//image//日历.png" id="imgid2"></div><br>
								学号： <input type="text" name="" class="input1">
							</form>
						</div>
					</div>
				<hr class="hrleft"> &nbsp <span class="headfont"> &nbsp申请信息</span><hr class="hrright">
					<div class="div2">
						<form action="" id="fid" class="div2_input">
							预约人： <input type="text" name="" class="input2">
							所属学院： <input type="text" name="" class="input2">
							结束日期： <input type="text" name="" class="input2"><br>
							具体使用时间： <input type="text" name="" class="input2"><br>
							使用时长： <input type="checkbox" name="" class=""><span style="color: #000;">全天</span>
									<input type="checkbox" name="" class=""><span style="color: #000;">半天</span>
									<input type="checkbox" name="" class=""><span style="color: #000;">2小时</span>
									<input type="checkbox" name="" style="margin-bottom: 2%;"><span style="color: #000;">其他</span><br><br><br><br><br>
							用途： <textarea class="textarea"></textarea><br>
								<input type="reset" value="重置" class="div2_input_button1">
								<input type="submit" value="提交" class="div2_input_button2" id="btn">
						</form>
					</div>
			</div>
		</div>
	</div>
	<div id="upload" class="upload">
		<span class="upload_1">预约信息</span>
		<div class="upload_2">
			预约用户：伊利亚木提<br><br>
			学号：2015710230330<br><br>
			预约教室：301<br><br>
			用途：替代会<br><br>
			使用时间：2018.05.11 14：00-16：00
		</div>
		<span class="upload_3">你的预约申请已提交，请耐心等待管理员审核！</span>
		<input type="text" value="确认" class="upload_4" id="sure">
	</div>	
	</div>
</body>
	<script type="text/javascript">
		var btnobj=document.getElementById('btn');
		var uploadobj=document.getElementById('upload');
		var sureobj=document.getElementById('sure');

		btnobj.onclick=function(e){
			e.preventDefault();
			uploadobj.style.display="block";
		}

		sureobj.onclick=function(){
			uploadobj.style.display="none";
		}

	</script>
</html>