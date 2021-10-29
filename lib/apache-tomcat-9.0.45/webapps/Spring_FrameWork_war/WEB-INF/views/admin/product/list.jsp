<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="ListUrl" value="/admin/product/list?page=1&limit=2" />
<c:url var="productAPI" value="/api/product" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>jQuery Pagination plugin</title>

</head>
<body>

	<div class="main-content">
		<c:if test="${not empty message}">
			<div class="alert alert-${alert}" role="alert" align="center">
				${message}</div>
		</c:if>
		<form action="<c:url value='/admin/product/list'/>" id="formSubmit"
			method="get">
			<table class="table table-striped">
				<div>
					<c:url var="createURL" value="/admin/product/edit" />

					<a class="" data-toggle="tooltip" title="Create new"
						href="${createURL}" style="margin-left: 1%;"> <i
						class="fa fa-plus-square " aria-hidden="true"></i>
					</a>
					<button id="btnDelete" class="" data-toggle="tooltip"
						title="Delete" onclick="warningBeforeDelete()" type="button"
						style="border: none; margin-left: 1%;">
						<i class="fa fa-trash" aria-hidden="true"></i>
					</button>

				</div>
				<thead>
					<tr>
						<th><input class="form-check-input" type="checkbox" value=""
							id="checkAll"></th>
						<th scope="col">Id</th>
						<th scope="col">Pr_Name</th>
						<th scope="col">Pr_Author</th>
						<th scope="col">Pr_Supplier</th>
						<th scope="col">Pr_Publisher</th>
						<th scope="col">Pr_Form</th>
						<th scope="col">Pr_Size</th>
						<th scope="col">Pr_Pages</th>
						<th scope="col">CreatedBy</th>
						<th scope="col">CreatedDate</th>
						<th scope="col">ModifiedBy</th>
						<th scope="col">ModifiedDate</th>
						<th scope="col">Tool</th>
					</tr>
				</thead>
				<nav aria-label="Page navigation">
					<tbody>

						<c:forEach var="item" items="${model.listResult}">
							<c:url var="updateURL" value="/admin/product/edit">
								<c:param name="id" value="${item.id}"></c:param>
							</c:url>


							<tr>
								<th><input class="form-check-input" type="checkbox"
									value="${item.id}" id="checkbox_${item.id}"></th>
								<th scope="row">${item.id}</th>
								<td>${item.pr_name}</td>
								<td>${item.pr_author}</td>
								<td>${item.pr_supplier}</td>
								<td>${item.pr_publisher}</td>
								<td>${item.pr_form}</td>
								<td>${item.pr_size}</td>
								<td>${item.pr_pages}</td>

								<td>${item.createdBy}</td>
								<td>${item.createdDate}</td>
								<td>${item.modifiedBy}</td>
								<td>${item.modifiedDate}</td>
								<td><a class="" data-toggle="tooltip" title="Edit"
									href="${updateURL}"> <i class="fa fa-pencil"
										aria-hidden="true"></i>
								</a></td>
								
							</tr>


						</c:forEach>

					</tbody>


				</nav>
			</table>
			<ul class="pagination" id="pagination"></ul>

			
			<input type="hidden" value="" id="page" name="page" /> <input
				type="hidden" value="" id="limit" name="limit" />


		</form>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


	<script
		src="<c:url value ='/template/admin/js/jquery.twbsPagination.js'/>"
		type="text/javascript"></script>

	<script type="text/javascript">
		var totalPage = ${model.totalPage};
		var currentPage = ${model.page};
		$(function () {
	        window.pagObj = $('#pagination').twbsPagination({
	            totalPages: totalPage,
	            visiblePages: 10,
	            startPage : currentPage,
	            onPageClick : function(event, page) {
					if (currentPage != page) {
						$('#limit').val(2);
						$('#page').val(page);
						$('#formSubmit').submit();
					}
				}
	        });
	    });
		function warningBeforeDelete() {
			swal({
				title : "Are you sure?",
				text : "You will not be able to recover this object !",
				type : "warning",
				showCancelButton : true,
				confirmButtonClass : "btn-danger",
				confirmButtonText : "Yes, delete it!",
				cancelButtonText : "No, cancel !"
			}).then(
					function(isConfirm) {
						if (isConfirm) {
							var ids = $('tbody input[type="checkbox"]:checked')
									.map(function() {
										return $(this).val();
									}).get();
							Delete(ids);
						}
					});
		}
		function Delete(data) {
			$
					.ajax({

						url : '${productAPI}',
						type : 'DELETE',
						contentType : 'application/json',
						data : JSON.stringify(data),
						success : function(result) {
							window.location.href = '${ListUrl}&message=delete_success';
						},
						error : function(error) {
							window.location.href = '${ListUrl}&message=error_system';
						}

					});
		}
	</script>
</body>
</html>
