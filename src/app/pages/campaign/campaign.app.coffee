'use strict'

angular.module 'ws.campaign', [
  require 'angular-ui-router'
]
.config ($stateProvider) ->
    # Define the mapping for each map and requir
    $stateProvider
      .state 'landing', require('./landing/campaign.landing.module.coffee')
