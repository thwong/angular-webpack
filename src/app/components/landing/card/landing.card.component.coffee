HTML           = require './landing.card.ng.html'
CONTROLLER     = require './landing.card.controller.coffee'
COMPONENT_NAME = 'landingCard'

angular.module WS_COMPONENT
  .component COMPONENT_NAME,
    template: HTML
    controller: CONTROLLER.handler
    controllerAs: CONTROLLER.name
    bindings:
      config: '<'
      card: '<'

module.exports =
  name: COMPONENT_NAME
