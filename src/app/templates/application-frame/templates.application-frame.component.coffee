'use strict'

MODULE_NAME = require './templates.application-frame.module.coffee'
COMPONENT_NAME = 'templateApplicationFrame'

# Define the application-frame component
angular.module MODULE_NAME
  .component COMPONENT_NAME,
    template: require './templates.application-frame.ng.html'
    controller: require './templates.application-frame.controller.coffee'
    transclude: true

module.exports =
  module: MODULE_NAME
  component: COMPONENT_NAME