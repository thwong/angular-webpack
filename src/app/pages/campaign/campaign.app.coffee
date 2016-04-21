'use strict'

angular.module 'ws.campaign', [
  require 'angular-ui-router'
]

CampaignLandingModule = require './landing/campaign.landing.module.coffee'

angular.module 'ws.campaign'
.config ($stateProvider) ->
    'ngInject'
    
    $stateProvider
      .state 'landing', CampaignLandingModule
