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
	
	
<title>ADD PRODUCT</title>

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
		<form class="form-horizontal " role="form" action="newProduct" method="post">
		
			<h2>Add Product form</h2>
			
			<div class="form-group">
				<label for="product_name" class="col-sm-3 control-label">product_name</label>
				<div class="col-sm-9">
					<input type="text" id="product_name" name="pn"  
						class="form-control">  
				</div>
			</div>
			<div class="form-group">
				<label for="description" class="col-sm-3 control-label">description</label>
				<div class="col-sm-9">
					<input type="text" id="description" name="description" 
						class="form-control"> 
				</div>
			</div>
			<div class="form-group">
				<label for="quantity" class="col-sm-3 control-label">quantity</label>
				<div class="col-sm-9">
					<input type="text" id="quantity" name="quantity" 
						class="form-control"> 
				</div>
			</div>
			
			
			<div class="form-group">
				<label for="color" class="col-sm-3 control-label">category_id</label>
				<div class="col-sm-9">
					<input type="text" id="category_id" name="cid"
						 class="form-control" >
				</div>
			</div>
			
			<div class="form-group">
				<label for="category_id" class="col-sm-3 control-label">supplier_id</label>
				<div class="col-sm-9">
					<input type="text" id="supplier_id" name="sid"
						 class="form-control" >
				</div>
			</div>
			
			<div class="form-group">
				<label for="liters" class="col-sm-3 control-label">liters</label>
				<div class="col-sm-9">
					<input type="text" id="liters" name="liters"
						 class="form-control" >
				</div>
			</div>
			<!-- /.form-group -->

			
				<div class="form-group">
				<label for="weight" class="col-sm-3 control-label">weight</label>
				<div class="col-sm-9">
					<input type="text" id="weight" name="weight" 
						class="form-control">

				</div>
			</div>
			
			
 
			<div class="form-group">
				<div class="col-sm-9 col-sm-offset-3">
					<input type="submit" class="btn btn-primary btn-block">ADD</button>
				</div>
			</div>
			
		</form>
		
		<!-- /form -->
	</div>
	<!-- ./container -->
</body>
</html>
