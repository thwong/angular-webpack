'use strict'

CampaignLandingModule = require './landing/campaign.landing.module.coffee'

angular.module 'ws.campaign'
.config ($stateProvider) ->
    'ngInject'
    
    $stateProvider
      .state 'landing', CampaignLandingModule