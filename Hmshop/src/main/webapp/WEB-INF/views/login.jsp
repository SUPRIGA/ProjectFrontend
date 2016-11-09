<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<style>
body {
	padding-top: 20px;
}

body {
    background-color: steelblue;
}
</style>

<body>

	<div class="container">
	
	<center>${message}</center>
		<%-- <c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>                             
  --%>
		<%-- < <form name='login' action="<c:url value="/afterlogin" />" method='POST'>
		</form> --%>

		<%--  <c:url value="/logout" var="/getlogin?logout" />
		<form id="logout" action="logout" method="post">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<a href="javascript:document.getElementById('logout').submit()">Logout</a>
		</c:if>   --%>
		
 
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
				<c:if test="${not empty error}">
				<center><h3><div style="color :blue" class="error">${error }</div></h3>
				</center>
				</c:if>
				
				<c:if test="${not empty logout}">
			<center><h3><div style="color: green" class="error">${logout }</div></h3>
				</center>
				</c:if>
					<div class="panel-heading">
						<h3 class="panel-title">Login</h3>
					</div>
					<div class="panel-body">
						<form accept-charset="UTF-8" role="form" action="loginpage" method="post">
								
								<div id="div-login-msg">
                                <div id="icon-login-msg" class="glyphicon glyphicon-chevron-right"></div>
                                <span id="text-login-msg">Type your username and password.</span>
                            </div>
                            
                             
							<fieldset>
								<div class="form-group">
									<label>E-mail:<input class="form-control" placeholder=" Enter E-mail" name="user_name"
										type="text"></label>
								</div>
								<div class="form-group">
									<label>Password:<input class="form-control" placeholder="Enter Password"
										name="password" type="password" value=""></label>
								</div>

								<input class="btn btn-lg btn-primary btn-block" type="submit"
									value="Login">
							</fieldset> 
							
						
            
            
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
</body>
</html>