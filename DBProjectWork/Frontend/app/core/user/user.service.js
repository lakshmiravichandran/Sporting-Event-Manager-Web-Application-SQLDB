'use strict';

angular.
  module('core.user')

  .service('User', function () {
      return {
          getId: function () {
            return Math.floor(Math.random()*(100-2)+1);
          }
      };
  });