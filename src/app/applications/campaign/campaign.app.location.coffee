'use strict'

MODULE                  = require './campaign.app.module.coffee'
CAMPAIGN_APP_COMPONENT  = require './campaign.app.component.coffee'

angular.module MODULE.name
  
  # Enable the HTML5 clean URL support
  .config ($locationProvider) ->
    'ngInject'
    $locationProvider.html5Mode true
  
  # Define the entry point for the campaign app application
  .value '$routerRootComponent', CAMPAIGN_APP_COMPONENT.name