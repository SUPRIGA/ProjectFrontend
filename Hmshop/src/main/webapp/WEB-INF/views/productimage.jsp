 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="/WEB-INF/views/Menu.jsp" %>
<head>
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resources/js/CartController.js" />"></script>

<style>
div.img {
    margin: 15px;
    margin-top: 8em;
    border: 1px solid #ccc;
    float: left;
    width: 270px;
}

div.img:hover {
    border: 1px solid #777;
}

div.img img {
    width: 100%;
    height: auto;
}

div.desc {
    padding: 15px;
    text-align: center;
}
.product-title, .rating, .product-description, .price, .vote, .sizes {
  margin-right: 15px; }

.product-title {
  margin-top: 0; }
  .add-to-cart, .like {
  background: #ff9f1a;
  padding: 1.2em 1.5em;
  border: none;
  text-transform: UPPERCASE;
  font-weight: bold;
  color: #fff;
  -webkit-transition: background .3s ease;
          transition: background .3s ease; }
  .add-to-cart:hover, .like:hover {
    background: #b36800;
    color: #fff; }
  


.product-title {
	font-size: 30px;
}

.product-desc {
	font-size: 20px;
}

.product-price {
	font-size: 22px;
}

.product-stock {
	color: #74DF00;
	font-size: 25px;
	margin-top: 10px;
}

.product-info {
	margin-top: 50px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>


<body ng-app="addToCartApp" ng-controller="addToCartCtrl">
<%-- <c:forEach items="${listProduct}" var="p">  --%>
	<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
						  
						  <div class="img">

<img alt="${p.id}" src="<c:url value="/resources/productimages/${p.id}.jpg"></c:url>" height=200px width=300px>
						  
						</div>
						
					</div><br>
					<br>
					<div class="details col-md-6">
						
						
						<div class="product-title">${p.pn}</div>
			<div class="product-desc">${p.description}</div>
			
			
			<div class="product-price">Price:${p.price}</div>  
			<div class="product-stock">In Stock</div>
			
			<!-- <div class="btn-group cart">
				<button type="button" class="btn btn-success">Add to cart</button>
			</div>
			<div class="btn-group wishlist">
				<button type="button" class="btn btn-danger">Add to
					wishlist</button>
			</div>
		</div> -->
						<p class="vote"><strong>91%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></p>
					
						<div class="action">
							<button class="add-to-cart btn btn-default" ng-click="addtocart('${p.id }')"type="button">add to cart</button>
						   <div class="btn-group wishlist">
				                    <button type="button" class="btn btn-danger">Add to wishlist</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div> 
	</div>
	