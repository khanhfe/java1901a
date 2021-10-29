<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="Common form elements and layouts" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Home Admin</title>

<link href="<c:url value='/template/admin/css/styles.css'/>"
	rel="stylesheet" type="text/css" />
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link href="<c:url value ='/template/admin/css/login.css'/>"
	rel="stylesheet" media="screen">
<link
	href="<c:url value ='/template/admin/sweetalert/sweetalert2.min.css'/>"
	rel="stylesheet" media="screen">


</head>
<body class="sb-nav-fixed">

	<%@ include file="/common/admin/header.jsp"%>
	<%@ include file="/common/admin/menu.jsp"%>

	<div id="layoutSidenav_content">
		<main>

			<dec:body />

		</main>

	</div>
	</div>

	<%@ include file="/common/admin/footer.jsp"%>


	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="<c:url value='/template/admin/js/scripts.js'/>"></script>
	<script
		src="<c:url value='/template/admin/js/datatables-simple-demo.js'/>"></script>
	<script
		src="<c:url value='/template/admin/sweetalert/sweetalert2.min.js'/>"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>

</body>
</html>