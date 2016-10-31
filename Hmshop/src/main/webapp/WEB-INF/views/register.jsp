<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-primary">
                <div class="panel-heading">Thank you for Register!</div>
                <div class="panel-body">
                    <form role="form" method="post" action="newUserAccount" >
                    
                        <label for="username">UserName</label>
                        <input type="text" id="user_name" class="form-control" name="user_name" placeholder="Example: John">
              	          
              	         <label for="username">Gender</label>
                        <input type="text" id="gender" class="form-control" name="gender" placeholder="Example: John">
              	            
              	          
                        <label for="emailaddress" class="m-t-10">EmailAddress</label>
                        <input type="text" id="email_id" class="form-control" name="email_id" placeholder="Example: john.smith@gmail.com">
                        
                        <label for="password" class="m-t-10">Password</label>
                        <input type="password" id="password" class="form-control" name="password" placeholder="">
                        
                        <label for="address" class="m-t-10">Address</label>
                        <input type="address" id="address" class="form-control" name="address" placeholder="Your Address">
                        
                        <label for="mobilenumber" class="m-t-10">MobileNumber</label>
                        <input type="mobilenumber" id="mn" class="form-control" name="mn" placeholder="">
                        
                        <center><input type="submit" class="btn btn-primary m-t-10" id="submitbtn" name="submit" value="Submit"></center>
                        
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>  