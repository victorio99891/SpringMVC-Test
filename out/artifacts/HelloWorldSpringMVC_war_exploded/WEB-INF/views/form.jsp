<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Form page...</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/style/AppStyle.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/scripts/jQuery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/scripts/IntValidate.js"></script>
</head>
<body>

<h1 id="headText">Welcome on form page!</h1>
<hr/>
<form:form action="post-form" modelAttribute="customer">
    <ul id="ul1">
        <li>Your name: <form:input placeholder="feel free" path="name" cssClass="textAreas"
                                   cssStyle="margin-left: 42px"/><br/></li>
        <li>Your lastname: <form:input placeholder="min. 3 chars" path="lastName" cssClass="textAreas"/><form:errors
                path="lastName"
                cssClass="errorMSG"/><br/>
        </li>
        <li>Your age: <form:input placeholder="range 18-69" type="number" path="age"
                                  cssClass="textAreas" cssStyle="margin-left: 65px"/><form:errors
                path="age"
                cssClass="errorMSG"/><br/>
        </li>
        <li>Your postal: <form:input placeholder="5 chars/digits" path="postalCode"
                                     cssClass="textAreas" cssStyle="margin-left: 65px"/><form:errors
                path="postalCode"
                cssClass="errorMSG"/><br/>
        </li>
        <li>Your course code: <form:input placeholder="your course code" path="courseCode"
                                          cssClass="textAreas" cssStyle="margin-left: 65px"/><form:errors
                path="courseCode"
                cssClass="errorMSG"/><br/>
        </li>
        <li>
            <button type="submit" style="margin-left: 550px">Sent your data!</button>
        </li>
    </ul>
</form:form>

<hr/>

<span class="spanURL">Go to the home page: <a class="linkURL" href="/">LINK!</a></span>


</body>
</html>
