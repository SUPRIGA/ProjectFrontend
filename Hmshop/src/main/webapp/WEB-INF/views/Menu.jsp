<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style type="text/css">
body,html {
  font-family: 'Open Sans', 'sans-serif';
   height: 100%;
    background-repeat: no-repeat;
    background-image: linear-gradient(rgb(100,149,237), rgb(12,97,33));
}

</style>


<style type="text/css">

.carousel{
    background: #2f4357;
    margin-top: 20px;
}
.carousel .item img{
    margin: 0 auto; /* Align slide image horizontally center */
}
.bs-example{
	margin: 20px;
}
 
</style>
<style type="text/css">
    ul{
        padding: 0;
        list-style: none;
        background:	#191970;
    }
    ul li{
        display: inline-block;
        position: relative;
        line-height: 40px;
        text-align: left;
    }
    ul li a{
        display: block;
        padding: 6px 25px;
         color: #F0FFFF;
        text-decoration: none;
    }
    ul li a:hover{
        color: #0000FF;
        background :#F0FFFF ;
    }
    ul li ul.dropdown{
        min-width: 100%; /* Set width of the dropdown */
        background:#6A5ACD;
        display: none;
        position: absolute;
        z-index: 999;
        left: 0;
    }
    ul li:hover ul.dropdown{
        display: block;
        	/* Display the dropdown */
    }
    ul li ul.dropdown li{
        display: block;
    }
   
}
</style>

<style type="text/css">
.stylish-input-group .input-group-addon
{
    background:deepskyblue!important;
    
}
.stylish-input-group .form-control{
	margin-top:0px;
	border-top:100; 
	box-shadow:0 0 0; 
	border-color:#33B5FF;
}
.stylish-input-group button
{
    border:0;
    background:transparent;    
}


</style>

<div class="panel panel-default">
 <div class="container">
  <div class="row">
    <div class="col-xs-3">
   <div class="item">
   <img src="<c:url value="/resources/images/LOGO1.jpg"/>" height=100px width=270px/></div>
    </div>
    <div class="col-xs-7">
   <h2>Welcome to Home e Shop</h2>
      <div id="imaginary_container"> 
<div class="input-group stylish-input-group">
<input type="text" class="form-control"  placeholder="Search" >
<span class="input-group-addon">
<button type="submit">
<span class="glyphicon glyphicon-search"></span>
 </button>  
 </span>
 </div>
</div>
    </div>
    
    <div class="col-xs-2">
      
<div class="text-center">


<c:if test="${pageContext.request.userPrincipal.name== null }">
<a href="getlogin"><button type="button" class="btn btn-primary">Login</button> </a>
<a href="getregister"><button type="button" class="btn btn-primary">Register</button> </a>	</c:if>	  


<c:if test="${pageContext.request.userPrincipal.name!='supri' && name !=null}">
				 <li><a href="viewcart"><span
						class="glyphicon glyphicon-shopping-cart"> Cart</span></a></li> </c:if>
						
						
						<c:if test="${pageContext.request.userPrincipal.name != null }">
						<li><a href="<c:url value="/j_spring_security_logout" />">Logout</a></li></c:if>
			

   <%--   <c:url value="logout" var="logoutUrl" />
<form id="logout" action="${logoutUrl}" method="post" >
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>
<c:if test="${pageContext.request.userPrincipal.name != null}">
	 
<a href="logout"><button type="button" class="btn btn-primary">Logout</button></a>
</c:if>  --%>
        </div>
    </div>
 </div>
    </div>
    </div>
      
         
    <ul>
        <li><a href="Hi">Home ${pageContext.request.userPrincipal.name}</a></li>
        <c:if test="${pageContext.request.userPrincipal.name!='supri'}">
         <li>
            <a href="#">Kitchen and Home Appliances &#9662;</a>
            <ul class="dropdown">
            <li><a href="#">Mixer Grinders</a></li>
            <li><a href="#">Irons</a></li>
            <li><a href="#">Ceiling Fans</a></li>
            <li><a href="#">Water Purifiers</a></li>
            <li><a href="#">Induction Cooktops</a></li>
            </ul>
        </li>
    <li>
            <a href="#">Large Appliances &#9662;</a>
            <ul class="dropdown">
                <li><a href="#">Air Conditioners</a></li>
                <li><a href="#">Air Coolers</a></li>
                <li><a href="#">Refrigerator</a></li>
                <li><a href="#">Washing Machine</a></li>
                <li><a href="#">Microwave Ovens</a></li>
            </ul>
        </li>
        
        <li>
            <a href="#">Home Furniture &#9662;</a>
            <ul class="dropdown">
                <li><a href="#">Dining Table</a></li>
                <li><a href="#">Laptop Table</a></li>
                <li><a href="#">Shoe Rack</a></li>
                <li><a href="#">Office Table</a></li>
                <li><a href="#">T.V Units</a></li>
                <li><a href="#">Sofas</a></li>
                <li><a href="#">Study Table</a></li>
            </ul>
        </li>
        <li>
            <a href="#">Kitchen and Dining &#9662;</a>
            <ul class="dropdown">
                <li><a href="#">Bottle and Container</a></li>
                <li><a href="#">Pot and Pans</a></li>
                <li><a href="#">Pressure Cookers</a></li>
                <li><a href="#">Gas Stoves</a></li>
                <li><a href="#">Dinner Sets</a></li>
                <li><a href="#">Kitchen Tools</a></li>
                <li><a href="#">Cocktail Glasses</a></li>
            </ul>
        </li>
        <li>
            <a href="#">HomeDecor and Lighting &#9662;</a>
            <ul class="dropdown">
                <li><a href="#"></a></li>
                <li><a href="#">LED Bulbs</a></li>
                <li><a href="#">Mirrors</a></li>
                <li><a href="#">Decoration Lights</a></li>
                <li><a href="#">Artwork</a></li>
                <li><a href="#">PhotoFrames</a></li>
                <li><a href="#">Table Lamps</a></li>
            </ul>
        </li>
         <li>
            <a href="#">Home Improvement and Garden &#9662;</a>
            <ul class="dropdown">
                <li><a href="#">Pest Controls</a></li>
                <li><a href="#">Gardening Tools</a></li>
                <li><a href="#">Barbecue OutdoorDining</a></li>
                <li><a href="#">Home Storage</a></li>
                <li><a href="#">Cleaning Tools</a></li>
            </ul>
        </li></c:if>
        
        <c:if test="${pageContext.request.userPrincipal.name=='supri'}">
       
         <li>
            <a href="#">Category &#9662;</a>
            <ul class="dropdown">
                <li><a href="getcategory">Add</a></li>
                <li><a href="getcategory">View</a></li>
                
            </ul>
        </li>
        
        
         <li>
            <a href="#">Product &#9662;</a>
            <ul class="dropdown">
                <li><a href="getproduct">Add</a></li>
                <li><a href="viewproduct">View</a></li>
                
            </ul>
        </li>
        
         <li>
            <a href="#">Supplier &#9662;</a>
            <ul class="dropdown">
                <li><a href="getsupplier">Add</a></li>
                <li><a href="viewsupplier">View</a></li>
                
            </ul>
        </li>
         </c:if>
    </ul>
    
    
 <%-- 
				<c:if test="${name == null }">
			<a href="getlogin"><button type="button" class="btn btn-primary">Login</button> </a>
          <a href="getregister"><button type="button" class="btn btn-primary">Register</button> </a></c:if>	  
				
				<c:if test="${name!='supri' && name !=null}">
				<li><a href="#"><span
						class="glyphicon glyphicon-shopping-cart"> Cart</span></a></li></c:if>
						<c:if test="${name != null }">
						<li><a href="<c:url value="/j_spring_security_logout" />">Logout</a></li></c:if>
			</ul> --%>
