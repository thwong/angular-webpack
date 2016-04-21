'use strict'

TEMPLATE_NAME = 'landing'
MODULE_NAME = "ws.templates.#{TEMPLATE_NAME}"

angular.module MODULE_NAME, []

module.exports =
  name: MODULE_NAME
  template: require './templates.landing.ng.html'
  controller: require './templates.landing.controller.coffee'
  controllerAs: TEMPLATE_NAME