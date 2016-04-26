'use strict'

angular.module 'ws.plan', [
  require 'angular-ui-router'
]

PlanLandingModule = require './landing/plan.landing.module.coffee'

angular.module 'ws.plan'
.config ($stateProvider) ->
    'ngInject'
    
    $stateProvider
      .state 'landing', PlanLandingModule
