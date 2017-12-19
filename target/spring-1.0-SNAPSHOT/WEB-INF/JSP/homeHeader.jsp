<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Spring App 1.0</title>
        
        <link href="<spring:url value="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
        <link href="<spring:url value="/resources/css/bootstrap-theme.css"/>" rel="stylesheet" type="text/css">
        <link href="<spring:url value="/resources/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css">
        <link href="<spring:url value="/resources/css/animate.css"/>" rel="stylesheet" type="text/css">
        <link href="<spring:url value="/resources/css/Site.css"/>" rel="stylesheet" type="text/css">
        <link href="<spring:url value="/resources/css/elegant-icons-style.css.css"/>" rel="stylesheet" type="text/css">
        <link href="<spring:url value="/resources/css/style.css"/>" rel="stylesheet" type="text/css">
        <link href="<spring:url value="/resources/css/style-responsive.css"/>" rel="stylesheet" type="text/css">
        <link href="<spring:url value="/resources/css/jquery.dataTables.min.css"/>" rel="stylesheet" type="text/css">
        <link href="<spring:url value="/resources/css/toastr.min.css"/>" rel="stylesheet" type="text/css">
        <link href="<spring:url value="/resources/css/jquery-ui-1.10.4.min.css"/>" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="<spring:url value="/resources/js/jquery-1.10.2.js"/>"></script>
        <script type="text/javascript" src="<spring:url value="/resources/js/bootstrap.min.js"/>"></script>
        <script type="text/javascript" src="<spring:url value="/resources/js/scripts.js"/>"></script>
        <script type="text/javascript" src="<spring:url value="/resources/js/toastr.min.js"/>"></script>
        <script type="text/javascript" src="<spring:url value="/resources/js/jquery.validate.js"/>"></script>
        <script type="text/javascript" src="<spring:url value="/resources/js/jquery.validate.unobtrusive.js"/>"></script>
        <script type="text/javascript" src="<spring:url value="/resources/js/toastr.min.js"/>"></script>
        <script type="text/javascript" src="<spring:url value="/resources/js/jquery-ui-1.10.4.min.js"/>"></script>
    </head>
    <body>
        <section id="container" class="">
        <header class="header dark-bg">
    <div class="toggle-nav">
        <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
    </div>
    <!--logo start-->
    <a href="" class="logo">SPRING MVC <span class="lite">APPLICATION</span></a>
    <!--logo end-->
    <div class="nav search-row" id="top_menu">
      
    </div>
    <div class="top-nav notification-row">
        <ul class="nav pull-right top-menu">

            <li id="mail_notification_bar" class="dropdown">
                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                    <i class="icon_book"></i>
                    <span class="badge bg-important">5</span>
                </a>
                <ul class="dropdown-menu extended inbox">
                    <div class="notify-arrow notify-arrow-blue"></div>
                    <li>
                        <p class="blue">You have 5 Pending Notifications</p>
                    </li>
                </ul>
            </li>

            <li id="task_notificatoin_bar" class="dropdown">
                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                    <i class="icon_calendar"></i>
                    <span class="badge bg-important">3</span>
                </a>
                <ul class="dropdown-menu extended inbox">
                    <div class="notify-arrow notify-arrow-blue"></div>
                    <li>
                        <p class="blue">You have 3 unread Mails</p>
                    </li>
                </ul>
            </li>

            <li class="dropdown">
                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                    <span class="profile-ava">
                        <img alt="" src="img/avatar1_small.jpg">
                    </span>
                    <span class="username"> ${firstname} </span>
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu extended logout">
                    <li>
                        <a href="#"><i class="icon_clock_alt"></i> Time-line</a>
                    </li>
                    <li>
                        <a href="#"><i class="icon_clock_alt"></i> Log-Out</a>
                    </li>
                </ul>
            </li>

        </ul>
    </div>
</header>
                    <aside>
    <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu">
            <li class="active">
                <a class="" href="employees">
                    <i class="icon_house_alt"></i>
                    <span>Manage Employees</span>
                </a>
            </li>
        </ul>
        <!-- sidebar menu end-->
    </div>
</aside>
                    