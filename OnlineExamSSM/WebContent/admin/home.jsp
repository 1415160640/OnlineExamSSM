<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>Insert title here</title>
	<%
    	String path = request.getContextPath();
	    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
    %>
	<c:set var="path" value="<%=basePath %>"></c:set>
 	<link href="${path }/css/bootstrap/bootstrap.min.css" rel="stylesheet" />
 	<style type="text/css">
 		.totalDiv {
 			height: 100px;
 			border: 1px solid #DDDDDD;
 			line-height: 100px;
 			margin-left: 65px;
 			margin-top: 31px;
 			border-radius: 3px;
 		}
 		.totalTitle {
 			float: left;
 			width: 40%;
 			height: 100%;
 			line-height: 100px;
 			text-align: center;
 			margin-left: -15px;
 		}
 		.totalValue {
 			float: right;
 			width: 50%;
 			height: 100%;
 			line-height: 100px;
 			text-align: center;
 		}
 		.val {
 			font-size: 30px;
 			font-weight: 700;
 		}
 		h1 {
 			color: #FFF;
 		}
 	</style>
</head>
<body style="text-align: center; background-image:url('${path }/images/reception/home-bg.png;') ">
	
	<!-- js引入 -->
    <script src="${path }/js/jquery.js"></script>
    <script src="${path }/js/bootstrap/bootstrap.min.js"></script>
    
</body>
</html>