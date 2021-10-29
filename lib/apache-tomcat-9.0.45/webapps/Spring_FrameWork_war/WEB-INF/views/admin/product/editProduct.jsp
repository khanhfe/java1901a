<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-admin-product" />
<c:url var="ListUrl" value="/web-product" />
<!DOCTYPE html>
<html>
<head>

<title><dec:title default="login" /></title>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link href="<c:url value ='/template/admin/css/login.css'/>"
	rel="stylesheet" media="screen">
<body>
	<div class="row">
		<div class="main">
			<!-- <div class="alert alert-success" role="alert">
			  This is a success alert—check it out!
			</div> -->
			<c:if test="${not empty messageResponse}">
				<div class="alert alert-${alert}" role="alert" align="center">
					${messageResponse}</div>
			</c:if>

			<form id="formSubmit">

				<input type="hidden" value="${model.pr_id}" id="pr_id" name="pr_id" />

				<div class="form-group">
					<label for="pr_name">Product Name</label>
					<%-- <input type="text" class="form-control" id="pr_name" name="pr_name" value="${model.pr_name}"> --%>
					<textarea id="pr_name" name="pr_name" class="form-control"
						value="${model.pr_name}"></textarea>
				</div>
				<div class="form-group">
					<label for="pr_author">Product Author</label> <input type="text"
						class="form-control" id="pr_author" name="pr_author"
						value="${model.pr_author}">
				</div>


				<div class="form-group">

					<label for="pr_category">Product Category</label> <select
						class="form-control" id="pr_categoryCode" name="pr_categoryCode">
						<c:if test="${empty model.pr_category}">
							<c:forEach var="item" items="${categories}">
								<option value="${item.cag_category}">${item.cag_category}</option>
							</c:forEach>
						</c:if>
						<c:if test="${not empty model.pr_category}">
							<c:forEach var="item" items="${categories}">
								<option value="${item.cag_category}"
									<c:if test="${item.cag_id == model.pr_category }"> selected="selected"</c:if>>
									${item.cag_category}</option>
							</c:forEach>
						</c:if>

					</select>

					<!-- <input type="password" class="form-control" id=cag_category name="cag_category">
				 -->
				</div>
				<div class="form-group">
					<label for="pr_supplier">Product Supplier</label> <input
						type="text" class="form-control" id="pr_supplier"
						name="pr_supplier" value="${model.pr_supplier}">
				</div>
				<div class="form-group">
					<label for="pr_publisher">Product Publisher</label> <input
						type="text" class="form-control" id="pr_publisher"
						name="pr_publisher" value="${model.pr_publisher}">
				</div>

				<div class="form-group">
					<label for="pr_form">Product Form</label> <input type="text"
						class="form-control" id="pr_form" name="pr_form"
						value="${model.pr_form}">
				</div>
				<div class="form-group">
					<label for="pr_size">Product Size</label> <input type="text"
						class="form-control" id="pr_size" name="pr_size"
						value="${model.pr_size}">
				</div>
				<div class="form-group">
					<label for="pr_pages">Product Pages</label> <input type="text"
						class="form-control" id="pr_pages" name="pr_pages"
						value="${model.pr_pages}">
				</div>
				<!-- <div class="form-group">
					<label for="pr_pages">Text area</label>
					<textarea id="w3review" name="w3review" class="form-control"></textarea>
				</div>  -->
				<c:if test="${not empty model.pr_id }">
					<button type="submit" class="btn btn btn-primary"
						id="addNewOrUpdate">Update</button>
				</c:if>
				<c:if test="${empty model.pr_id }">
					<button type="submit" class="btn btn btn-primary"
						id="addNewOrUpdate">Add New</button>
				</c:if>





			</form>

		</div>
	</div>
</body>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script class="u-script" type="text/javascript"
	src="<c:url value ='/ckeditor/ckeditor.js'/>" defer=""></script>
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

<script>
	var editor = '';
	$(document).ready(function() {
		editor = CKEDITOR.replace('pr_name');
	});
	/* $('#pr_name').click(function(){
		 editor = CKEDITOR.replace( 'pr_name' );
		  
	}); */
	$('#addNewOrUpdate')
			.click(
					function(e) {
						e.preventDefault();
						var data = {};
						var formData = $('#formSubmit').serializeArray();
						$.each(formData, function(i, v) {
							data["" + v.name + ""] = v.value;
						});
						data['pr_name'] = editor.getData();
						var pr_id = $('#pr_id').val();
						if (pr_id == "") {
							add(data);
						} else {
							update(data);
						}
						function add(data) {
							jQuery.support.cors = true;
							$
									.ajax({
										url : '${APIurl}',
										type : 'POST',
										contentType : 'application/json; charset=utf-8',
										data : JSON.stringify(data),
										dataType : 'json',
										success : function(result) {
											window.location.href = '${ListUrl}?type=edit&pr_id='
													+ result.pr_id
													+ '&message=insert_success';
										},
										error : function(error) {
											window.location.href = '${ListUrl}?type=list&page=1&maxPageItem=5&message=error_system';
										}
									});
						}
						function update(data) {
							jQuery.support.cors = true;
							$
									.ajax({

										url : '${APIurl}',
										type : 'PUT',
										contentType : 'application/json; charset=utf-8',
										data : JSON.stringify(data),
										dataType : 'json',
										success : function(result) {
											window.location.href = '${ListUrl}?type=edit&pr_id='
													+ result.pr_id
													+ '&message=update_success';
										},
										error : function(error) {
											window.location.href = '${ListUrl}?type=list&page=1&maxPageItem=5&message=error_system';
										}

									});
						}

					});
</script>
</html>