<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Post-form page...</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/style/AppStyle.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/scripts/jQuery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/scripts/IntValidate.js"></script>
</head>
<body>

<h1 id="headText">Welcome on post form page!</h1>
<hr/>
Your name is: <span class="myLabel">${customer.name}</span><br/><br/>
Your lastname is: <span class="myLabel">${customer.lastName}</span><br/><br/>
Your age is: <span class="myLabel">${customer.age}</span><br/><br/>
Your postal is: <span class="myLabel">${customer.postalCode}</span><br/><br/>
Your code is: <span class="myLabel">${customer.courseCode}</span><br/><br/>

<hr/>

<span class="spanURL">Go to the form page: <a class="linkURL" href="form">LINK!</a></span>


</body>
</html>
