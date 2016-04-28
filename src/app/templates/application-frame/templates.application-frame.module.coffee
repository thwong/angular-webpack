'use strict'

TEMPLATE    = require './templates.application-frame.ng.html'
MODULE_NAME = 'ws.templates.applicationFrame'

angular.module MODULE_NAME, []

module.exports =
  name: MODULE_NAME
  template: TEMPLATE