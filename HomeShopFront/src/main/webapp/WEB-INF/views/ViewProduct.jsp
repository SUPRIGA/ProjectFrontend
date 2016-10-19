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
	app.controller("ProductController",function($scope,$http){
		$scope.getdata = function(){
			$http({
				method : 'GET',
				url : 'viewproductlist'
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
<div ng-app="myApp" ng-controller="ProductController" ng-init="getdata()">
<table>
<tr>
<th>product_id</th>
<th>product_name</th>
<th>description</th>
<th>quantity</th>
<th>price</th>
<th>category_id</th>
<th>supplier_id</th>
<th>liters</th>
<th>weight</th>
</tr>
<tr ng-repeat="items in result">
<th>{{items.product_id}}</th>
<th>{{items.product_name}}</th>
<th>{{items.description}}</th>
<th>{{items.quantity}}</th>
<th>{{items.price}}</th>
<th>{{items.category_id}}</th>
<th>{{items.liters}}</th>
<th>{{items.weight}}</th>


</tr>
</table>

 </div>
</body>
</html>