'use strict'

MODULE_NAME = require './templates.landing.module.coffee'
COMPONENT_NAME = 'templateLanding'
CONTROLLER_NAME = require './templates.landing.controller.coffee'

# Define the application-frame component
angular.module MODULE_NAME
  .component COMPONENT_NAME,
    template: require './templates.landing.ng.html'
    controller: CONTROLLER_NAME

module.exports =
  module: MODULE_NAME
  component: COMPONENT_NAME
  controller: CONTROLLER_NAME