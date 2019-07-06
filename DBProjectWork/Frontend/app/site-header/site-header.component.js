'use strict';

angular.
  module('siteHeader').
  component('siteHeader', {
    templateUrl: 'site-header/site-header.template.html',
    controller: function SiteHeaderController() {
        this.siteHeader = 'Site Header';
      }
  });