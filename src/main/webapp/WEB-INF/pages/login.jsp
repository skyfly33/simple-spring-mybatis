<%--
  Created by IntelliJ IDEA.
  User: donghoon
  Date: 15. 8. 22.
  Time: 오후 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>devarchi33_test</title>

    <%--style--%>
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="<c:url value="/resources/bower_components/bootstrap/dist/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/bower_components/font-awesome/css/font-awesome.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/form-elements.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <%-- Favicon and touch icons --%>
    <link rel="shortcut icon" href="<c:url value="/resources/ico/favicon.png"/>">
    <link rel="apple-touch-icon-precomposed" sizes="144x144"
          href="<c:url value="/resources/ico/apple-touch-icon-144-precomposed.png"/>">
    <link rel="apple-touch-icon-precomposed" sizes="144x144"
          href="<c:url value="/resources/ico/apple-touch-icon-114-precomposed.png"/>">
    <link rel="apple-touch-icon-precomposed" sizes="144x144"
          href="<c:url value="/resources/ico/apple-touch-icon-72-precomposed.png"/>">
    <link rel="apple-touch-icon-precomposed" sizes="144x144"
          href="<c:url value="/resources/ico/apple-touch-icon-57-precomposed.png"/>">
</head>
<body>
<!-- Top content -->
<div class="top-content">

    <div class="inner-bg">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text">
                    <h1><strong>devarchi33_test</strong> ${message}</h1>

                    <div class="description">
                        <p>
                            <c:out value="${message2}"/>
                            <%--Download it on <a href="http://azmind.com"><strong>AZMIND</strong></a>, customize and use it--%>
                            <%--as you like!--%>
                        </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 form-box">
                    <div class="form-top">
                        <div class="form-top-left">
                            <h3>Login to devarchi33_test site</h3>

                            <p>Enter your username and password to log on:</p>
                        </div>
                        <div class="form-top-right">
                            <i class="fa fa-key"></i>
                        </div>
                    </div>
                    <div class="form-bottom">
                        <form:form role="form" action="/login" method="post" class="login-form" modelAttribute="User">
                            <div class="form-group">
                                <label class="sr-only" for="userId">Username</label>
                                <input type="email" name="userId" placeholder="Email..."
                                       class="form-email form-control" id="userId">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="password">Password</label>
                                <input type="password" name="password" placeholder="Password..."
                                       class="form-password form-control" id="password">
                            </div>
                            <button type="submit" class="btn">Sign in!</button>
                        </form:form>
                        <p><a href="signUp" style="color: #005983">Sign Up</a></p>

                        <form action="/main" method="post" id="hiddenThumbnail">
                            <input type="hidden" id="kakaoThumbnail" name="userThumb"/>
                            <input type="hidden" id="kakaoNickName" name="kakaoNickName"/>
                        </form>
                    </div>
                </div>
            </div>
            <div class="row">
                <p>${inValidUser}</p>
            </div>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 social-login">
                    <%--<h3>...or login with:</h3>--%>

                    <div class="social-login-buttons">
                        <%--<a id="kakao-login-btn"></a>--%>
                        <%--<a class="btn btn-link-1 btn-link-1-facebook" href="#">--%>
                        <%--<i class="fa fa-facebook"></i> Facebook--%>
                        <%--</a>--%>
                        <%--<a class="btn btn-link-1 btn-link-1-twitter" href="#">--%>
                        <%--<i class="fa fa-twitter"></i> Twitter--%>
                        <%--</a>--%>
                        <%--<a class="btn btn-link-1 btn-link-1-google-plus" href="#">--%>
                        <%--<i class="fa fa-google-plus"></i> Google Plus--%>
                        <%--</a>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%-- Javascript --%>
    <script src="<c:url value="/resources/bower_components/jquery/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/resources/bower_components/jquery-backstretch/jquery.backstretch.min.js"/>"></script>
    <script src="<c:url value="/resources/js/scripts.js"/>"></script>
    <script src="<c:url value="/resources/js/kakao.js"/>"></script>
    <script src="<c:url value="/resources/js/kakaoLogin.js"/>"></script>

    <!--[if lt IE 10]>
    <script src="<c:url value="/resources/js/placeholder.js"/>"></script>
    <![endif]-->

</div>
</body>
</html>