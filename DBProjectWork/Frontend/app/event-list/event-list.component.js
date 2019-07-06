'use strict';

angular.
  module('eventList').
  component('eventList', {
    templateUrl: 'event-list/event-list.template.html',
    controller: ['$scope', '$routeParams', '$http', '$location', function EventListController($scope, $routeParams, $http, $location) {
    	
        $scope.buildQuery = function(){
        	var result;
        	if(!$routeParams.search)
		    	result =  "";
		    else
		    	result = $routeParams.search;
		    return  "q="+result+"&c="+$scope.filter.city+"&s="+$scope.filter.stadium+"&sp="+$scope.filter.sport;
		};

		$scope.getData = async function(){
		    var query = await $scope.buildQuery();
		    console.log(query);
		    await $http({
            	method: 'GET',
            	url: 'http://localhost:8080/eventList?'+ query
            }).then(function successCallback(response) {
                	$scope.events_list = response.data;
            	}, function errorCallback(response) {
                	// called asynchronously if an error occurs
                	// or server returns response with an error status.
                	console.log(response);
                	alert('Oops something went wrong! Please try in sometime!');

            });
		};

		$scope.eventListInit = async function(){
		    $scope.filter={};
		    $scope.filter.query="";
		    $scope.filter.city="";
		    $scope.filter.stadium="";
		    $scope.filter.sport="";
		    $scope.getData();  
		};
    }]
  });