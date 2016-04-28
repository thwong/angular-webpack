'use strict'

TEMPLATE      = require './templates.landing.ng.html'
CONTROLLER    = require './templates.landing.controller.coffee'
MODULE_NAME   = 'ws.templates.landing'
CONTROLLER_AS = 'landing'

angular.module MODULE_NAME, []

module.exports =
  name: MODULE_NAME
  template: TEMPLATE
  controller: CONTROLLER
  controllerAs: CONTROLLER_AS