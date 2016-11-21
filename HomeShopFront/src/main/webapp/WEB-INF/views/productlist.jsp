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
<body>
<c:forEach items="${listProduct}" var="p">
<div class="img">

<a href="getproductimage/${p.id}"><img alt="${p.id}" src="<c:url value="/resources/productimages/${p.id}.jpg"></c:url>" height=100px width=270px></a>

<div class="desc"><h1>${p.pn}</h1>
<li>Price:${p.price}</li>


</div>
</div>

</c:forEach> 
<%-- <!-- <style>
/*****************globals*************/
body {
  font-family: 'open sans';
  overflow-x: hidden; }

img {
  max-width: 100%; }
.product-title, .price, .sizes, .colors {
  text-transform: UPPERCASE;
  font-weight: bold; }
.checked, .price span {
  color: #ff9f1a; }

.product-title, .rating, .product-description, .price {
  margin-bottom: 15px; }

.product-title {
  margin-top: 0; }

.size {
  margin-right: 20px; }
  .size:first-of-type {
    margin-left: 40px; }

.color {
  display: inline-block;
  vertical-align: middle;
  margin-right: 10px;
  height: 2em;
  width: 2em;
  border-radius: 2px; }
  .color:first-of-type {
    margin-left: 20px; }

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



.orange {
  background: #ff9f1a; }

.green {
  background: #85ad00; }

.blue {
  background: #0076ad; }

.tooltip-inner {
  padding: 1.3em; }
.preview-pic {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1; }


div.img img{
    margin: 30px;
    margin-top: 2em;
    border: 1px solid #ccc;
    float: left;
    height:100px;
    width: 270px;
}

</style> -->

  <body>
	<c:forEach items="${listProduct}" var="p">
	<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
						  
						  <div class="img">

<img alt="${p.id}" src="<c:url value="/resources/productimages/${p.id}.jpg"></c:url>" height=100px width=270px>
						  
						</div>
						
					</div>
					<div class="details col-md-6">
						
						
						<div class="product-title">${p.pn}</div>
			<div class="product-desc">${p.description}</div>
			
			<hr>
			<div class="product-price">Price:${p.price}</div>  
			<div class="product-stock">In Stock</div>
			<hr>
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
							<button class="add-to-cart btn btn-default" type="button">add to cart</button>
						   <div class="btn-group wishlist">
				                    <button type="button" class="btn btn-danger">Add to wishlist</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div> --%>

  