'use strict'

angular.module('ws.campaign')
  .config ($stateProvider) ->

    $stateProvider 

      .state 'landing',
        url: ''
        template: require './landing/campaign.landing.ng.html'
        controller: require './landing/campaign.landing.controller.coffee'
        controllerAs: 'campaignLanding'