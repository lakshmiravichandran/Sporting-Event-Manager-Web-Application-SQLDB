'use strict';

angular.
  module('eventSearch').
  component('eventSearch', {
    templateUrl: 'event-search/event-search.template.html',
    controller: ['$scope', 'City', 'Sport', '$rootScope', '$location', 
    function EventSearchController($scope, City, Sport, $rootScope, $location) {
        $scope.cities = City.query();
        $scope.sports = Sport.query();

        $scope.searchEvent = function(searchText) {
        	console.log(searchText);
        	var path = '/events/search/' + encodeURI(searchText);
        	console.log(path);
        	$location.path(path);
    	};

    	$scope.showAllEvents = function() {
        	$location.path('/events/search/');
    	};
      }]
  });