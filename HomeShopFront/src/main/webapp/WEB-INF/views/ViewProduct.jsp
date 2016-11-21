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
				alert(" success");
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
<th>id</th>
<th>pn</th>
<th>description</th>
<th>quantity</th>
<th>price</th>
<th>cid</th>
<th>sid</th>
<th>liters</th>
<th>weight</th>
</tr>
<tr ng-repeat="items in result">
<th>{{items.id}}</th>
<th>{{items.pn}}</th>
<th>{{items.description}}</th>
<th>{{items.quantity}}</th>
<th>{{items.price}}</th>
<th>{{items.cid}}</th>
<th>{{items.sid}}</th>
<th>{{items.liters}}</th>
<th>{{items.weight}}</th>
<th><a href="editproduct/{{items.id}}">edit</a></th>
<th><a href="deleteproduct/{{items.id}}">delete</a></th>
</tr>
</table>

 </div>
</body>
</html>