'use strict'

landingTemplate = require '../../templates/landing/templates.landing.module.coffee'

angular.module 'ws.campaign', [
  require 'angular-ui-router'
]
.config ($stateProvider) ->
    $stateProvider
      .state 'landing',
        url: ''
        resolve:
          factory: -> myList: [1..3]
        template: landingTemplate.template
        controller: landingTemplate.controller
        controllerAs: landingTemplate.controllerAs
