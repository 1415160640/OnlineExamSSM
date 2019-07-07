<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登入</title>
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
	<div class="bidTitle">猿来入此在线考试系统登录</div>
	<div class="logCon">
	 <form role="form" action="studentLogin" method="post">
		<div class="line" ><span>账号:</span>
		<input class="bt_input" type="text"  name="studentAccount" id="inputEmail3" type="text" placeholder="考试登录账号" /></div>
		<div class="line"  ><span>密码:</span>
		<input class="bt_input"  name="studentPwd" id="inputPassword3" type="password" placeholder="考试登录密码"/></div>
		<button type="submit" class="logingBut">登录</button>
	  </form>
	</div>
	<div class="logCon1">
	    <a href="preStudentReg" ><span>注册</span></a>
	    <a href="admin/login.jsp" ><span>教师登入</span></a>
	</div>
</div>
<div style="text-align:center;">
</div>
<script src="${path }/js/jquery.js"></script>
	<script src="${path }/js/bootstrap/bootstrap.min.js"></script>
	<script src="${path }/js/zeroModal/zeroModal.min.js"></script>
	<script src="${path }/js/login.js"></script>
	<script type="text/javascript">
		$(function() {
			$("#examCenter-link, #mineCenter-link").click(function() {
				//判断是否登录
				var studetnId = $(this).attr("studentId");
				if(studetnId.trim() == "" || studetnId == null) {
					zeroModal.show({
						title: "提示",
						content: "登录后才能查看",
						width : '200px',
						height : '130px',
						overlay : false,
						ok : true,
						onClosed : function() {
							location.reload();
						}
					});
					return false;
				}
			});
			
			$("#self").click(function() {
				var href = $(this).attr("href");
				zeroModal.show({
					title: "Self",
					content: "个人信息查看",
					width : '400px',
					height : '200px',
					top : '100px',
					left : '430px',
					url: href,
					overlay : false,
					ok : true,
					onClosed : function() {
						location.reload();
					}
				});
				return false;
			});
		});
	</script>
</body>
</html>