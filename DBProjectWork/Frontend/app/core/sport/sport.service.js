'use strict';

angular.
  module('core.sport').
  factory('Sport', ['$resource',
    function($resource) {
      return $resource('core/sport/:sportId.json', {}, {
        query: {
          method: 'GET',
          params: {sportId: 'sports'},
          isArray: true
        }
      });
    }
  ]);