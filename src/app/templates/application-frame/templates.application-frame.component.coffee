'use strict'

COMPONENT_NAME = 'templateApplicationFrame'
MODULE_NAME = "ws.templates.#{COMPONENT_NAME}"

angular.module MODULE_NAME, []

# Define the application-frame component
.component COMPONENT_NAME, {
  template: 'It Worked'
}

module.exports =
  module: MODULE_NAME
  component: COMPONENT_NAME