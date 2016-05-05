'use strict'

CONTROLLER     = require './landing.list.controller.coffee'
CREATE_CARD    = require '../create-card/landing.create-card.component.coffee'
CARD           = require '../card/landing.card.component.coffee'
HTML           = require './landing.list.ng.html'
COMPONENT_NAME = 'landingList'

angular.module WS_COMPONENT
  .component COMPONENT_NAME,
    template: HTML
    controller: CONTROLLER.handler
    controllerAs: CONTROLLER.name
    bindings:
      config: '<'

module.exports =
  name: COMPONENT_NAME
