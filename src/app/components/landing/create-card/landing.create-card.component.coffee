'use strict'

HTML           = require './landing.create-card.ng.html'
CONTROLLER     = require './landing.create-card.controller.coffee'
COMPONENT_NAME = 'landingCreateCard'

angular.module WS_COMPONENT
  .component COMPONENT_NAME,
    template: HTML
    controller: CONTROLLER.handler
    controllerAs: CONTROLLER.name
    bindings:
      config: '<'
      createLink: '@'

module.exports = name: COMPONENT_NAME
