<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
	<div class="container">
		<div class="row">

			<div class="main">

				<!-- <div class="alert alert-success" role="alert">
  This is a success alert—check it out!
</div> -->
				<c:if test="${param.incorrectAccount != null}">
					<div class="alert alert-danger" role="alert" align="center">
						UserName or PassWord incorrect</div>
				</c:if>
				<c:if test="${param.accessDenied != null}">
					<div class="alert alert-danger" role="alert" align="center">
						You Not Authorize</div>
				</c:if>


				<h3>
					Please Log In, or <a href="#">Sign Up</a>
				</h3>
				<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6">
						<a href="#" class="btn btn-lg btn-primary btn-block">Facebook</a>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6">
						<a href="#" class="btn btn-lg btn-info btn-block">Google</a>
					</div>
				</div>
				<div class="login-or">
					<hr class="hr-or">
					<span class="span-or">or</span>
				</div>

				<form role="form" action="j_spring_security_check" id="formLogin"
					method="post">
					<div class="form-group">
						<label for="inputUsernameEmail">Username or email</label> <input
							type="text" class="form-control" id="us_username"
							name="j_username">
					</div>
					<div class="form-group">
						<a class="pull-right" href="#">Forgot password?</a> <label
							for="inputPassword">Password</label> <input type="password"
							class="form-control" id="us_password" name="j_password">
					</div>
					<div class="checkbox pull-right">
						<label> <input type="checkbox"> Remember me
						</label>
					</div>
					<button type="submit" class="btn btn btn-primary">Log In</button>



				</form>


			</div>
		</div>
</body>
</html>