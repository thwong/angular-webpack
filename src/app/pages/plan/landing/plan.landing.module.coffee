landingTemplate = require '../../../templates/landing/templates.landing.module.coffee'
planLandingFactory = require './plan.landing.factory.coffee'

angular.module('ws.plan').requires.push 'ws.templates.landing'

module.exports =
  url: ''
  resolve:
    factory: (PlanLandingFactory) ->
      'ngInject'
      PlanLandingFactory
  template: landingTemplate.template
  controller: landingTemplate.controller
  controllerAs: landingTemplate.controllerAs