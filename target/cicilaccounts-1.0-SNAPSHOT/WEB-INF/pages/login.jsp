<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>CICIL Account Server</title>
        <spring:url value="/resources/css/style.css" var="stylecss"/>
        <spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS"/>
        <link href="${stylecss} " rel="stylesheet">
        <link href="${bootstrapCSS} " rel="stylesheet">
    </head>
<body>

<nav class="navbar navbar-default no-margin">
    <!-- navbar-header-->
    <div class="navbar-header">
        <a class="navbar-brand" href="#"><span style="font-size: 22px;font-style: italic;">CICIL </span><span style="font-size: 16px;">ACCOUNT ANALYSIS</span></a>
    </div>
</nav>

<section id="login" style="height:auto">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <form:form id="loginForm" modelAttribute="login" action="loginProcess" method="post">

                    <div class="col-md-4  col-md-offset-4">
                        <div class="form-group">
                            <label for="userName"class="control-label" >UserName</label>
                            <form:input path="userName" class="form-control" placeholder="Username" required="true"/>
                        </div>
                    </div>

                    <div class="col-md-4  col-md-offset-4">
                        <div class="form-group">
                            <label for="password" class="control-label">Password</label>
                            <form:password path="password" class="form-control" placeholder="Password" required="true"/>
                        </div>
                    </div>

                    <div class="col-md-4 col-md-offset-4">
                        <div class="form-group">
                            <input type="submit" id="btn-login" class="btn btn-custom btn-lg btn-block" value="Log in"
                                   style="font-weight: bold;background-color:#364d6d">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-4 col-md-offset-4">
                            <div id="versionDiv" style="float: right;font-weight: bold;">Version:1.0</div>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
        <!-- /.col-xs-12 -->
    </div>
    <!-- /.row -->
    <!-- /.container -->
</section>

<footer id="footer" style="margin-top: 3px; margin: auto" class="navbar-inverse">
    <div class="container" style="margin: auto;
    padding-top: 6px;">
        <div class="row">
            <div class="col-xs-12 ">

                <p style="color: #fff"> © 2018  CICIL Ltd.</p>
            </div>
        </div>
    </div>
</footer>
</body>


</html>
