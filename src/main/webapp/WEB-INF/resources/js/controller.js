var app=angular.module("app",[]);
app.controller("myController",function($scope,$http){
	
	$scope.getBookList=function(){
		
		$http.get('http://localhost:8080/DevDarshan/getBooksList').success(function(data){
			
			$scope.books=data;
			
		});
	};
	
			$scope.addToCart=function(isbn){
				
				$http.put('http://localhost:8080/DevDarshan/cart/add/'+isbn).success(function(){
						
							alert('Added Successfully To The Cart');
			
			});
				
			}
			
			
			
			$scope.refreshCart=function(){
				alert('Enter In Refresh'+$scope.cartId);
			$http.get('http://localhost:8080/DevDarshan/cart/getCart/'+$scope.cartId).success(function(data){
					$scope.cart=data;
			});
				
				
			}
			
			$scope.getCart=function(cartId){
				
			alert('CART ID FIRST='+cartId);
				$scope.cartId=cartId;
				$scope.refreshCart(cartId);
				
			}
			
			
			$scope.removeFromCart=function(cartitem){
				
				$http.put('http://localhost:8080/DevDarshan/cart/removecartitem/'+cartitem).success(function(){
					
						$scope.refreshCart();
				});
				
			};
			
			$scope.clearCart=function(){
				
				$http.put('http://localhost:8080/DevDarshan/cart/removeAllItems/'+$scope.cartId).success(function(){
					
					$scope.refreshCart();
				});
			};
			
			$scope.calculateGrandTotal=function(){
				
				var grandTotal=0.0;
				for(var i=0; i< $scope.cart.cartItems.length;i++){
					
					grandTotal=grandTotal + $scope.cart.cartItems[i].totalPrice;
					alert('GradTotal='+grandTotal);
					
				}
				return grandTotal; 
			}
			
	
});