'use strict';

angular.
  module('core.city').
  factory('City', ['$resource',
    function($resource) {
      return $resource('core/city/:cityId.json', {}, {
        query: {
          method: 'GET',
          params: {cityId: 'cities'},
          isArray: true
        }
      });
    }
  ]);