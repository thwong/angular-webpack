'use strict'

MODULE         = require '../../components.module.coffee'
HTML           = require './landing.create-card.ng.html'
CONTROLLER     = require './landing.create-card.controller.coffee'
LANGUAGE       = require './landing.create-card.translation.json'
COMPONENT_NAME = 'landingCreateCard'

angular.module MODULE.name
  .config ($translateProvider) ->
    $translateProvider.translations 'en', LANGUAGE

angular.module MODULE.name
  .component COMPONENT_NAME,
    template: HTML
    controller: CONTROLLER.handler
    controllerAs: CONTROLLER.name
    bindings:
      config: '<'
      createLink: '@'

module.exports = name: COMPONENT_NAME
