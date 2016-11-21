var cartApp = angular.module ("addToCartApp", []);

cartApp.controller("addToCartCtrl", function ($scope, $http){
	
	 $scope.retrieveCart = function (user_name) {
	        $scope.user_name = user_name;
	        $scope.refreshCartItems(user_name);
	    };
	    
	    $scope.refreshCartItems = function () {
	        $http.get('http://localhost:8081/HomeShopFront/refreshcart/'+$scope.user_name).success(function (data) {
	           $scope.cart=data;
	        });
	    };
	    
	    $scope.addtocart = function(itemId){
	    	 $http.put('http://localhost:8081/HomeShopFront/addtocart/'+itemId).success(function () {
	             alert("Item added to the cart!")
	         });
	    }
	
  $scope.removeItemFromCart=function(cart_id){
	    	
	    	$http.delete('http://localhost:8081/HomeShopFront/removeItemFromCart/' + cart_id).success(function () {
	    		alert("Removed from cart")
	    		$scope.refreshCartItems();
	    	});
	  }
	    $scope.GrandTotalOfItems = function () {
	        var grandTotal=0;

	        for (var i=0; i<$scope.cart.length; i++) {
	            grandTotal+=$scope.cart[i].price;
	       }

	        return grandTotal;
	    };
});