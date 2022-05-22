<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="apple-touch-icon" href="assets/img/zin.png">
<link rel="shortcut icon" type="image/x-icon" href="assets/img/zin.png">
<title>Register Customer</title>
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/assets/css/templatemo.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/assets/css/custom.css">

<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/assets/css/fontawesome.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/assets/css/login.css">
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-2"></div>
			<div class="col-lg-6 col-md-8 login-box">
				<div class="col-lg-12 login-key">
					<i class="fa fa-key" aria-hidden="true"></i>
				</div>
				<div class="col-lg-12 login-title">REGISTER CUSTOMER</div>

				<div class="col-lg-12 login-form">
					<div class="col-lg-12 login-form">

						<form:form method="POST" modelAttribute="customer"
							action="register" enctype="multipart/form-data">
							<h2 class="form-signin-heading">Create your account</h2>
							<spring:bind path="name">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<form:input type="text" path="name" class="form-control"
										placeholder="Username" autofocus="true"></form:input>
									<form:errors path="name"></form:errors>
								</div>
							</spring:bind>

							<spring:bind path="password">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<form:input type="password" path="password"
										class="form-control" placeholder="Password"></form:input>
									<form:errors path="password"></form:errors>
								</div>
							</spring:bind>

							<spring:bind path="phone">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<form:input type="text" path="phone" class="form-control"
										placeholder="Confirm your phone"></form:input>
									<form:errors path="phone"></form:errors>
								</div>
							</spring:bind>

							<spring:bind path="email">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<form:input type="text" path="email" class="form-control"
										placeholder="Confirm your email"></form:input>
									<form:errors path="email"></form:errors>
								</div>
							</spring:bind>

							<spring:bind path="file">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<form:input type="file" path="file" class="form-control"
										placeholder="Confirm your email"></form:input>
									<form:errors path="file"></form:errors>
								</div>
							</spring:bind>


							<spring:bind path="captcha">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<img src="${pageContext.request.contextPath }/captcha">
									<form:input type="text" path="captcha"></form:input>
									<form:errors path="captcha"></form:errors>
								</div>
							</spring:bind>


								<div> ${error}</div>




							<button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
						</form:form>
					</div>
				</div>
				<div class="col-lg-3 col-md-2"></div>
			</div>
		</div>
	</div>

</body>
<script
	src="<%=request.getContextPath() %>/resources/js/products/validate-form.js"></script>

</html>
