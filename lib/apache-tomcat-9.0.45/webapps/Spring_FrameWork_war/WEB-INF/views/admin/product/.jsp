<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-admin-product" />
<c:url var="ListUrl" value="/web-product" />
<!DOCTYPE html>
<html>
<head>

<title></title>
	</head>
<body>
	<!-- <div class="row"> -->
		<div class="main">
			<!-- <div class="alert alert-success" role="alert">
			  This is a success alert—check it out!
			</div> -->
			<%-- <c:if test="${not empty messageResponse}">
				<div class="alert alert-${alert}" role="alert" align="center">
					${messageResponse}</div>
			</c:if> --%>

			<form id="formSubmit">

				<input type="hidden" value="" id="pr_id" name="pr_id" />

				<div class="form-group">
					<label for="pr_name">Product Name</label>
					<%-- <input type="text" class="form-control" id="pr_name" name="pr_name" value="${model.pr_name}"> --%>
					<textarea id="pr_name" name="pr_name" class="form-control"
						value=""></textarea>
				</div>
				<div class="form-group">
					<label for="pr_author">Product Author</label> <input type="text"
						class="form-control" id="pr_author" name="pr_author"
						value="">
				</div>


				<div class="form-group">

					<label for="pr_category">Product Category</label> <select
						class="form-control" id="pr_categoryCode" name="pr_categoryCode">

					</select>

					<!-- <input type="password" class="form-control" id=cag_category name="cag_category">
				 -->
				</div>
				<div class="form-group">
					<label for="pr_supplier">Product Supplier</label> <input
						type="text" class="form-control" id="pr_supplier"
						name="pr_supplier" value="">
				</div>
				<div class="form-group">
					<label for="pr_publisher">Product Publisher</label> <input
						type="text" class="form-control" id="pr_publisher"
						name="pr_publisher" value="">
				</div>

				<div class="form-group">
					<label for="pr_form">Product Form</label> <input type="text"
						class="form-control" id="pr_form" name="pr_form"
						value="">
				</div>
				<div class="form-group">
					<label for="pr_size">Product Size</label> <input type="text"
						class="form-control" id="pr_size" name="pr_size"
						value="">
				</div>
				<div class="form-group">
					<label for="pr_pages">Product Pages</label> <input type="text"
						class="form-control" id="pr_pages" name="pr_pages"
						value="">
				</div>
			

			</form>

		</div>
	</div>
</body>
<%-- <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script class="u-script" type="text/javascript"
	src="<c:url value ='/ckeditor/ckeditor.js'/>" defer=""></script>
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> --%>


</html>