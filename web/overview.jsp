<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>教室管理系统</title>
	<link rel="stylesheet" type="text/css" href="css/overview.css">

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
		<div class="overview">
			<div class="head1" id="head1"><span class="head11"> &nbsp 全部预约</span></div>
			<div class="head2" id="head2"><span class="head11"> &nbsp 未审核预约</span></div>
			<div class="head3">
				<div class="cover1" id="cover1"></div><div class="cover2" id="cover2"></div>
				<div class="head3_1" id="head3_1">
					<table class="head3_1_1"  border="0" cellspacing="3" cellpadding="2" />
						<tr >
							<td>编号</td>
							<td>预约教室</td>
							<td>预约用户</td>
							<td>学号</td>
							<td>用途</td>
							<td>联系方式</td>
							<td>使用时间</td>
							<td>状态</td>
							<td>设备借用</td>
							<td width="70px">操作</td>
						</tr>
						<tr><td colspan="10"><hr color="gray" size="1.2px"></td></tr>
						<tr>
							<td>00001</td>
							<td>101</td>
							<td>伊利木拉提</td>
							<td>201571030307</td>
							<td>替代一会</td>
							<td>12345678911</td>
							<td>00001</td>
							<td>通过</td>
							<td>00001</td>
							<td width="70px"><img src="image/ture.png">&nbsp&nbsp&nbsp<img src="image/fauls.png"></td>
						</tr>
						<tr>
							<td>00001</td>
							<td>101</td>
							<td>伊利木拉提</td>
							<td>201571030307</td>
							<td>替代一会</td>
							<td>12345678911</td>
							<td>00001</td>
							<td>通过</td>
							<td>00001</td>
							<td width="70px"><img src="image/ture.png">&nbsp&nbsp&nbsp<img src="image/fauls.png"></td>
						</tr>
						<tr>
							<td>00001</td>
							<td>101</td>
							<td>伊利木拉提</td>
							<td>201571030307</td>
							<td>替代一会</td>
							<td>12345678911</td>
							<td>00001</td>
							<td>通过</td>
							<td>00001</td>
							<td width="70px"><img src="image/ture.png">&nbsp&nbsp&nbsp<img src="image/fauls.png"></td>
						</tr>
						<tr>
							<td>00001</td>
							<td>101</td>
							<td>伊利木拉提</td>
							<td>201571030307</td>
							<td>替代一会</td>
							<td>12345678911</td>
							<td>00001</td>
							<td>通过</td>
							<td>00001</td>
							<td width="70px"><img src="image/ture.png">&nbsp&nbsp&nbsp<img src="image/fauls.png"></td>
						</tr>
						<tr>
							<td>00001</td>
							<td>101</td>
							<td>伊利木拉提</td>
							<td>201571030307</td>
							<td>替代一会</td>
							<td>12345678911</td>
							<td>00001</td>
							<td>通过</td>
							<td>00001</td>
							<td width="70px"><img src="image/ture.png">&nbsp&nbsp&nbsp<img src="image/fauls.png"></td>
						</tr>
					</table>
				</div>
				<!-- 		这是分割线 			-->
				<div class="head3_2" id="head3_2">
					<table class="head3_1_1"  border="0" cellspacing="3" cellpadding="2" />
						<tr >
							<td>编号</td>
							<td>预约教室</td>
							<td>预约用户</td>
							<td>学号</td>
							<td>用途</td>
							<td>联系方式</td>
							<td>使用时间</td>
							<td>状态</td>
							<td>设备借用</td>
							<td width="70px">操作</td>
						</tr>
						<tr><td colspan="10"><hr color="gray" size="1.2px"></td></tr>
						<tr>
							<td>00001</td>
							<td>101</td>
							<td>伊利木拉提</td>
							<td>201571030307</td>
							<td>替代一会</td>
							<td>12345678911</td>
							<td>00001</td>
							<td>通过</td>
							<td>00001</td>
							<td width="70px"><img src="image/ture.png">&nbsp&nbsp&nbsp<img src="image/fauls.png"></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
	<script type="text/javascript">
		var head1obj=document.getElementById('head1');
		var head2obj=document.getElementById('head2');
		var head3_1obj=document.getElementById('head3_1');
		var head3_2obj=document.getElementById('head3_2');
		var cover1obj=document.getElementById('cover1');
		var cover2obj=document.getElementById('cover2');
		head1obj.onclick=function(){
			head1obj.style.backgroundColor="#D7D1C6";
			head2obj.style.backgroundColor="#E79C44";
			head3_1obj.style.display="block";
			head3_2obj.style.display="none";
			cover1obj.style.backgroundColor="#D7D1C6";
			cover2obj.style.backgroundColor="#E79C44";
		}
		head2obj.onclick=function(){
			head1obj.style.backgroundColor="#E79C44";
			head2obj.style.backgroundColor="#D7D1C6";
			head3_1obj.style.display="none";
			head3_2obj.style.display="block";
			cover2obj.style.backgroundColor="#D7D1C6";
			cover1obj.style.backgroundColor="#E79C44";
		}
	</script>
</html>