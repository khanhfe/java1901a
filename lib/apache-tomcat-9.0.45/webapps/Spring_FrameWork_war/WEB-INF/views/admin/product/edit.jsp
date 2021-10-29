<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="productURL" value="/admin/product/list" />
<c:url var="editProductURL" value="/admin/product/edit" />
<c:url var="productAPI" value="/api/product" />
<!DOCTYPE html>
<html>
<head>

<title></title>
</head>
<body>
	<div class="row">
		<div class="col-sm-9" style="margin-left: 10%">
			<c:if test="${not empty message}">
				<div class="alert alert-${alert}" role="alert" align="center">
					${message}</div>
			</c:if>
			<h1>Edit something</h1>
			<form:form id="formSubmit" modelAttribute="model" role="form">

				<div class="form-group">
					<label for="pr_name">Product Name</label>
					<form:textarea path="pr_name" cssClass="form-control" id="pr_name" />
				</div>
				<div class="form-group">
					<label for="pr_author">Product Author</label>
					<form:input path="pr_author" cssClass="form-control" />
				</div>


				<div class="form-group">

					<label for="pr_categoryCode">Product Category</label>

					<form:select path="pr_categoryCode" id="pr_categoryCode">
						<form:option value="" label="-- Chọn thể loại --" />
						<form:options items="${categories}" />
					</form:select>

				</div>
				<div class="form-group">
					<label for="pr_supplier">Product Supplier</label>
					<form:input path="pr_supplier" cssClass="form-control" />
				</div>
				<div class="form-group">
					<label for="pr_publisher">Product Publisher</label>
					<form:input path="pr_publisher" cssClass="form-control" />
				</div>

				<div class="form-group">
					<label for="pr_form">Product Form</label>
					<form:input path="pr_form" cssClass="form-control" />
				</div>
				<div class="form-group">
					<label for="pr_size">Product Size</label>
					<form:input path="pr_size" cssClass="form-control" />
				</div>
				<div class="form-group">
					<label for="pr_pages">Product Pages</label>
					<form:input path="pr_pages" cssClass="form-control" />
				</div>
				<div class="form-group">
					<c:if test="${not empty model.id}">
						<button type="button" class="btn btn btn-primary"
							id="btnAddOrUpdate">Edit</button>
					</c:if>
					<c:if test="${empty model.id}">
						<button type="button" class="btn btn btn-primary"
							id=btnAddOrUpdate>Add New</button>
					</c:if>
				</div>

				<form:hidden path="id" id="id"/>



			</form:form>

		</div>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<script>
	$('#btnAddOrUpdate').click(function (e) {
	    e.preventDefault();
	    var data = {};
	    var formData = $('#formSubmit').serializeArray();
	    $.each(formData, function (i, v) {
            data[""+v.name+""] = v.value;
        });
	    var id = $('#id').val();
	    if (id == "") {
	    	add(data);
	    } else {
	    	update(data);
	    }
	});
	
	function add(data) {
		$.ajax({
            url: '${productAPI}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
            	window.location.href = "${editProductURL}?id="+result.id+"&message=insert_success";
            },
            error: function (error) {
            	window.location.href = "${productURL}?page=1&limit=2&message=error_system";
            }
        });
	}
	
	function update(data) {
		$.ajax({
            url: '${productAPI}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
            	window.location.href = "${editProductURL}?id="+result.id+"&message=update_success";
            },
            error: function (error) {
            	window.location.href = "${editProductURL}?id="+result.id+"&message=error_system";
            }
        });
	}
	</script>
		 <%-- var editor = '';
		$(document).ready(function() {
			editor = CKEDITOR.replace('pr_name');
		});
		$('#pr_name').click(function() {
			editor = CKEDITOR.replace('pr_name');

		}); --%>
		
</body>
</html>