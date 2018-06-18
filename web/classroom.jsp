<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>教室管理系统</title>
	<link rel="stylesheet" type="text/css" href="css/classroom.css">
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
		<%@include file="list.jsp"%>

	</div>
	<div class="content">
		<div class="overview">
			<div class="head1"><span class="head11">教室状态</span></div>
			<div class="head2">
				<div class="cover"> </div>
				<div class="head2div">
					<span class="head2-span" style="margin-left: 73px;">来源：</span><form class="checkbox"> 
						<input type="checkbox" name="">个人
						<input type="checkbox" name="" style="margin-left: 30px;">班级
						<input type="checkbox" name="" style="margin-left: 30px;">学院
					</form>
				</div>
				<div class="head2div">
					<span class="head2-span">借用时间：</span><form class="checkbox">
						<input type="checkbox" name="">全天
						<input type="checkbox" name="" style="margin-left: 20px;">半天
						<input type="checkbox" name="" style="margin-left: 20px;">2小时
						<input type="checkbox" name="" style="margin-left: 20px;">其他
					</form>
				</div>
				<div class="head2div">
					<span class="head2-span">借用状态：</span><form class="checkbox">
						<input type="checkbox" name="">已使用
						<input type="checkbox" name="" style="margin-left: 14px;">未使用
					</form>
				</div>
				<div class="head2div">
					<span class="head2-span">教室总数（<span id="sid1">0</span>) 个</span>
					<span class="head2-span" style="margin-left: 60px;">未借用（<span id="sid2">0</span>）个</span>
				</div>
			</div>
		</div>
		<div class="situation">
			<div class="situation_1">
				<span class="situation_1_1">1</span>
				<ul class="situation_1_2">
					<li class="div2" id="li101">
						<span class="classroom">101</span>
						<img src="image/开锁.png" style="position: absolute">
						<span class="borrowed">已借用</span>
					</li>
					<li class="div1">
						<span class="classroom">102</span>
						<img src="image/上锁.png" style="position: absolute">
						<span class="borrowed">未借用</span>
					</li>
					<li class="div1">
						<span class="classroom">103</span>
						<img src="image/上锁.png" style="position: absolute">
						<span class="borrowed">未借用</span>
					</li>
					<li class="div1">
						<span class="classroom">104</span>
						<img src="image/上锁.png" style="position: absolute">
						<span class="borrowed">未借用</span>
					</li>
					<li class="div1">
						<span class="classroom">105</span>
						<img src="image/上锁.png" style="position: absolute">
						<span class="borrowed">未借用</span>
					</li>
				</ul>
			</div>
			<div class="situation_1">
				<span class="situation_1_1">2</span>
				<ul class="situation_1_2">
					<li class="div2">
						<span class="classroom">201</span>
						<img src="image/开锁.png" style="position: absolute">
						<span class="borrowed">已借用</span>
					</li>
					<li class="div1">
						<span class="classroom">202</span>
						<img src="image/上锁.png" style="position: absolute">
						<span class="borrowed">未借用</span>
					</li>
					<li class="div2">
						<span class="classroom">203</span>
						<img src="image/开锁.png" style="position: absolute">
						<span class="borrowed">已借用</span>
					</li>
					<li class="div1">
						<span class="classroom">204</span>
						<img src="image/上锁.png" style="position: absolute">
						<span class="borrowed">未借用</span>
					</li>
					<li class="div1">
						<span class="classroom">205</span>
						<img src="image/上锁.png" style="position: absolute">
						<span class="borrowed">未借用</span>
					</li>
				</ul>
			</div>
			<div class="situation_1">
				<span class="situation_1_1">3</span>
				<ul class="situation_1_2">
					<li class="div2">
						<span class="classroom">301</span>
						<img src="image/开锁.png" style="position: absolute">
						<span class="borrowed">已借用</span>
					</li>
					<li class="div2">
						<span class="classroom">302</span>
						<img src="image/开锁.png" style="position: absolute">
						<span class="borrowed">已借用</span>
					</li>
					<li class="div2">
						<span class="classroom">303</span>
						<img src="image/开锁.png" style="position: absolute">
						<span class="borrowed">已借用</span>
					</li>
					<li class="div1">
						<span class="classroom">304</span>
						<img src="image/上锁.png" style="position: absolute">
						<span class="borrowed">未借用</span>
					</li>
					<li class="div1">
						<span class="classroom">305</span>
						<img src="image/上锁.png" style="position: absolute">
						<span class="borrowed">未借用</span>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="window1" id="window1">
		<span class="window1_1">借用信息</span><br>
		&nbsp&nbsp&nbsp&nbsp申请人：伊利亚<br><br>&nbsp&nbsp&nbsp&nbsp学院：计算机科学与工程学院<br><br>&nbsp&nbsp&nbsp&nbsp申请时间：2018.05.07<br><br>&nbsp&nbsp&nbsp&nbsp使用时间：2018.05.11 14：00-16:00<br><br>&nbsp&nbsp&nbsp&nbsp设备借用：白板，投影仪等设备
	</div>
</body>
	<script type="text/javascript">
		sid1obj=document.getElementById('sid1');  
		sid1obj.innerHTML="15	";
		sid2obj=document.getElementById('sid2');
		sid2obj.innerHTML="9";
		//上面表示教室总数及未借用数

		var li101obj=document.getElementById('li101');
		var window1obj=document.getElementById('window1');
		li101obj.onmouseenter=function(){
			window1obj.style.display="block";
			// var x=document.body.clientWidth;
			var x= this.getBoundingClientRect().left;
			var y= this.getBoundingClientRect().top;
			//使用getBoundingClientRect()方法。它返回一个对象，其中包含了left、right、top、bottom四个属性，分别对应了该元素的左上角和右下角相对于浏览器窗口（viewport）左上角的距离。
			// document.title=x+'-'+y;
			window1obj.style.left=(x+(document.body.clientWidth*0.83*0.17))+'px';
			window1obj.style.top=(y-1)+'px';
		}
		li101obj.onmouseleave=function(){
			window1obj.style.display="none";
		}

	</script>
</html>