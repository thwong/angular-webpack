'use strict'

require 'angular'

angular.module 'ws', []

angular.module('ws').component 'dateCard', {
  templateUrl: require('./date-card.ng.html')
  controller: require('./date-card.controller.coffee')
  controllerAs: 'dateCard'
}