'use strict'

MODULE         = require '../../components.module.coffee'
TEMPLATE       = require './landing.card.template.coffee'
CONTROLLER     = require './landing.card.controller.coffee'
LANGUAGE       = require './landing.card.translation.json'
COMPONENT_NAME = 'landingCard'

angular.module MODULE.name
  .config ($translateProvider) ->
    $translateProvider.translations 'en', LANGUAGE

angular.module MODULE.name
  .component COMPONENT_NAME,
    template: TEMPLATE.html
    controller: CONTROLLER.handler
    controllerAs: CONTROLLER.name
    bindings:
      cardModel: '<'
      cpLang: '<'
      cpStyle: '<'

module.exports = name: COMPONENT_NAME
