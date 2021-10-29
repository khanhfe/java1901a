<%--
  Created by IntelliJ IDEA.
  User: VinhBui
  Date: 2021-09-10
  Time: 6:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<nav class="main-header navbar navbar-expand navbar-dark">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
        </li>
    </ul>
    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
        <li class="nav-item">
            <a class="nav-link" data-widget="fullscreen" href="#" role="button" title="Full Screen">
                <i class="fas fa-expand-arrows-alt"></i>
            </a>
        </li>
        <li class="nav-item" onclick="darkMode()">
            <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button" title="DarkMode">
                <i class="fas fa-adjust"></i>
            </a>
        </li>
    </ul>
</nav>
