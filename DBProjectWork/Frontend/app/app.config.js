'use strict';

angular.
  module('ticketApp').
  config(['$routeProvider',
    function config($routeProvider) {
      $routeProvider.
        when('/', {
          template: '<event-search></event-search>'
        }).
        when('/events/search/:search', {
          template: '<event-list></event-list>'
        }).
        when('/events/lat/:lat/lng/:lng', {
          template: '<event-list></event-list>'
        }).
        when('/events/map/:cityId', {
          template: '<city-map></city-map>'
        }).
        when('/events/:eventId', {
          template: '<event-detail></event-detail>'  
        }).
        when('/events/:eventId/thankyou', {
          template: '<thank-you></thank-you>'
        }).
        otherwise('/');
    }
  ]);


