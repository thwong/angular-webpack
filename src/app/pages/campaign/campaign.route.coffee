landingPage = require './landing/campaign.landing.module.coffee'

angular.module 'ws.campaign'
.config ($stateProvider) ->
    $stateProvider
      .state 'landing', landingPage
