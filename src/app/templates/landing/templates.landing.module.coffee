'use strict'

TEMPLATE    = require './templates.landing.ng.html'
MODULE_NAME = 'ws.templates.landing'

angular.module MODULE_NAME, []

module.exports =
  name: MODULE_NAME
  template: TEMPLATE