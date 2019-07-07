<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册</title>
    <%
    	String path = request.getContextPath();
	    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
    %>
	<c:set var="path" value="<%=basePath %>"></c:set>
<link rel="stylesheet" href="css/index.css" />
</head>
<body>
<img src="${path }/images/reception/home-bg.png" class="bgImg" />
<div class="content">
	<div class="bidTitle">猿来入此用户注册</div>
	<div class="logCon">
	 <div id="studentRegSub">
	    <div class="line" ><span>用户姓名:</span>
		<input class="bt_input"  name="studentName" id="validateName" type="text" placeholder="真实姓名" />
		</div>
		<div class="line" ><span>登入账号:</span>
		<input class="bt_input" name="studentAccount" id="account" type="text" placeholder="考试登录账户" />
		</div>
		<div class="line"  ><span>登入密码:</span>
		<input class="bt_input"  name="studentPwd" id="pwd" type="password" placeholder="考试登录密码"/>
		</div>
		<div class="line"><span>班级:</span>
		<select id="classId" class="selectpicker" name="classId" id="class" data-live-search="true">
									<c:forEach items="${classs }" var="clazz">
									<option value="${clazz.classId }">${clazz.className }</option>
									</c:forEach>
		</select>
		</div>
		<button type="button" class="logingBut" id="signSubmit">用户注册</button>
	    <div>
	    <div class="logCon1">
	          <a href="./index.jsp" ><span>登入</span></a>
	    </div>
	</div>
	</div>
</div>
<div style="text-align:center;">
</div>
<script src="${path }/js/jquery.js"></script>
<script src="${path }/js/zeroModal/zeroModal.min.js"></script>
<script src="${path }/js/login.js"></script>
</body>
</html>