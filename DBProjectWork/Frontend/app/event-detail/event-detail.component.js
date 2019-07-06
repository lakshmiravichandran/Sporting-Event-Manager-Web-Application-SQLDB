'use strict';

angular.
  module('eventDetail').
  component('eventDetail', {
    templateUrl: 'event-detail/event-detail.template.html',
    controller: ['$scope', 'User', function EventDetailController($scope, User) {
        //$scope.detailPage = 'Detail';
        //$scope.eventName = 'Superbowl: 2018';
        $scope.userId = User.getId();
        $scope.isValidCheckout = false;

        $scope.initEventDetails = function(){
          $scope.isValidCheckout = false;
	        $scope.event = {
		        id: 1,
            seatid: 1,
		        name: "Wrestlemania",
		        team1:{id:1,name:'John Cena'},
		        team2:{id:2,name:'Kane'},
		        stadium:{name:'PPG Paints Arena',latitude:1.1,longitude:1.2,location:'123 Street',city:'Pittsburgh',state:'PA',zip:"15206"},
		        event_date:Date.now()
	        };
	        $scope.seatTypeArr = [
            { 
              "type" : "Regular",
              "value" : "regular"
            },
            { 
              "type" : "VIP", 
              "value" : "vip"
            }];
	        $scope.ticket={
	          event:$scope.event.id
	        };
        };
  	    // END of init function
  
        $scope.checkout = function(){
          if($scope.ticket && $scope.ticket.event && $scope.ticket.typeOfSeat && (($scope.ticket.noOfAdults>=0 && $scope.ticket.noOfChildren>=0)|| (!$scope.ticket.noOfAdults || !$scope.ticket.noOfChildren)) && ($scope.ticket.noOfAdults>0 || $scope.ticket.noOfChildren>0)){
            $scope.isValidCheckout = true;
          }
          else{
            alert("Please enter proper parameters");
          }
        };

        // $scope.initCheckoutPage = function(){
        //   $scope.booking =
        //   { 
        //     "event" : 1,
        //     "noOfAdults" : 4,
        //     "noOfChildren" : 5,
        //     "typeOfSeat" :'VIP'
        //   };
        //   // $scope.cardMonth="";
        //   // $scope.cardCvv="";
        //   // $scope.cardYear="";
        //   // $scope.cardNumber="";
        // };
        // END of init function
        $scope.pay = async function(){
            if($scope.cardNumber && $scope.cardMonth && $scope.cardYear && $scope.cardCvv && $scope.cardMonth<13 && $scope.cardMonth>0 && $scope.cardYear< 35 && $scope.cardYear>17 && $scope.cardCvv >=1 && $scope.cardCvv.length<=999){
                if(JSON.stringify($scope.cardNumber).length==16){
                  alert("Okay");
                  $location.path('/home');
                }
                else
                  alert("Invalid card number");
            }else if($scope.cardNumber){
                if(JSON.stringify($scope.cardNumber).length==10){
                    alert("Okay");
                    $location.path();
                }
                else
                    alert("Invalid Account Details");
            }
            else{
                alert("Please enter proper card details");
            }
        };


    }]
  });