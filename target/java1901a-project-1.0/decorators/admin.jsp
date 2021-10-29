<%--
  Created by IntelliJ IDEA.
  User: saber
  Date: 2021-09-10
  Time: 4:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="vi-VN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><dec:title default="Trang chủ Admin"/></title>
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="<c:url value="/template/admin/plugins/fontawesome-free/css/all.min.css"/>">
    <!-- overlayScrollbars -->
    <link rel="stylesheet"
          href="<c:url value="/template/admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css"/>">

    <!-- Theme style -->
    <link rel="stylesheet" href="<c:url value="/template/admin/css/adminlte.min.css"/>">
</head>
<body class="hold-transition dark-mode sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed" id="body">
<div class="wrapper">
    <%--header--%>
    <%@include file="/common/admin/header.jsp" %>
    <%--/header--%>

    <%--Menu --%>
    <%@include file="/common/admin/menu.jsp" %>
    <%--/menu--%>
    <div class="content-wrapper">
        <%--body--%>
        <dec:body/>
        <%--/body--%>
    </div>
    <%--footer--%>
    <%@include file="/common/admin/footer.jsp" %>
    <%--/footer--%>

    <script type="text/javascript">
        function darkMode() {
            let element = document.getElementById("body");
            element.classList.toggle("dark-mode");
        }
    </script>

    <!-- REQUIRED SCRIPTS -->
    <!-- jQuery -->
    <script src="<c:url value="/template/admin/plugins/jquery/jquery.min.js"/>"></script>
    <!-- Bootstrap -->
    <script src="<c:url value="/template/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
    <!-- overlayScrollbars -->
    <script src="<c:url value="/template/admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"/>"></script>
    <!-- AdminLTE App -->
    <script src="<c:url value="/template/admin/js/adminlte.js"/>"></script>

    <!-- PAGE PLUGINS -->
    <!-- jQuery Mapael -->
    <script src="<c:url value="/template/admin/plugins/jquery-mousewheel/jquery.mousewheel.js"/>"></script>
    <script src="<c:url value="/template/admin/plugins/raphael/raphael.min.js"/>"></script>
    <script src="<c:url value="/template/admin/plugins/jquery-mapael/jquery.mapael.min.js"/>"></script>
    <script src="<c:url value="/template/admin/plugins/jquery-mapael/maps/usa_states.min.js"/>"></script>
    <!-- ChartJS -->
    <script src="<c:url value="/template/admin/plugins/chart.js/Chart.min.js"/>"></script>

    <!-- AdminLTE for demo purposes -->
    <script src="<c:url value="/template/admin/js/demo.js"/>"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="<c:url value="/template/admin/js/pages/dashboard2.js"/>"></script>
</body>
</html>