<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	
<title>ADD SUPPLIER</title>

<style type="text/css">
body {
	background-color: #eee;
}

*[role="form"] {
	max-width: 530px;
	padding: 15px;
	margin: 0 auto;
	background-color: #fff;
	border-radius: 0.3em;
}

*[role="form"] h2 {
	margin-left: 5em;
	margin-bottom: 1em;
}
</style>

</head>
<body>
	<div class="container">
		<form class="form-horizontal " role="form" action="newSupplier">
			<h2>Add Supplier form</h2>
			<div class="form-group">
				<label for="supplier_name" class="col-sm-3 control-label">SupplierName</label>
				<div class="col-sm-9">
					<input type="text" id="supplier_name" name="sn"  
						class="form-control" autofocus>  
				</div>
			</div>
			<div class="form-group">
				<label for="email_id" class="col-sm-3 control-label">EmailAddress</label>
				<div class="col-sm-9">
					<input type="text" id="email_id" name="email_id" 
						class="form-control"> 
				</div>
			</div>
			<div class="form-group">
				<label for="supplier_address" class="col-sm-3 control-label">Address</label>
				<div class="col-sm-9">
					<input type="text" id="supplier_address" name="sa" 
						class="form-control"> 
				</div>
			</div>
			<div class="form-group">
				<label for="mobile_number" class="col-sm-3 control-label">MobileNumber</label>
				<div class="col-sm-9">
					<input type="text" id="mobile_number" name="mn"
						 class="form-control" >
				</div>
			</div>
			
			
			<!-- /.form-group -->

		
			<div class="form-group">
				<div class="col-sm-9 col-sm-offset-3">
					<button type="submit" class="btn btn-info btn-block">ADD</button>
				</div>
			</div>
		</form>
		<!-- /form -->
	</div>
	<!-- ./container -->
</body>
</html>