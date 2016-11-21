<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script type="text/javascript">
	var app = angular.module('myApp',[]);
	app.controller("SupplierController",function($scope,$http){
		$scope.getdata = function(){
			$http({
				method : 'GET',
				url : 'viewsupplierlist'
			}).success(function(data, status ,headers, config){
				$scope.result = data;
				alert("success");
			}).error(function(data, status, headers, config){
				alert("error");
			});
		}
	});
		
		
</script>
</head>
<body>
<div ng-app="myApp" ng-controller="SupplierController" ng-init="getdata()">
<table>
<tr>
<th>supplier_id</th>
<th>sn</th>
<th>email_id</th>
<th>mn</th>
<th>sa</th>
</tr>
<tr ng-repeat="items in result">
<th>{{items.supplier_id}}</th>
<th>{{items.sn}}</th>
<th>{{items.email_id}}</th>
<th>{{items.mn}}</th>
<th>{{items.sa}}</th>
<th><a href="getsupplier/{{items.supplier_id}}">edit</a></th>
<th><a href="deletesupplier/{{items.supplier_id}}">delete</a></th>
</tr>
</table>

 </div>
</body>
</html>