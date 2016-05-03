'use strict'

MODULE         = require '../../components.module.coffee'
TEMPLATE       = require './landing.list.template.coffee'
CONTROLLER     = require './landing.list.controller.coffee'
LANGUAGE       = require './landing.list.translation.json'
COMPONENT_NAME = 'landingList'

angular.module MODULE.name
  .config ($translateProvider) ->
    $translateProvider.translations 'en', LANGUAGE

angular.module MODULE.name
  .component COMPONENT_NAME,
    template: TEMPLATE.html
    controller: CONTROLLER.handler
    controllerAs: CONTROLLER.name
    bindings:
      config: '<'
      list: '<'

module.exports = name: COMPONENT_NAME
