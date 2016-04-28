'use strict'

MODULE_NAME = require './templates.application-frame.module.coffee'
CONTROLLER = require './templates.application-frame.controller.coffee'
COMPONENT_NAME = 'templateApplicationFrame'

angular.module MODULE_NAME
  .component 'testLanding',
    template: 'This is test landing'

angular.module MODULE_NAME
  .component 'testDetail',
    template: 'This is test detail page'

# Define the application-frame component
angular.module MODULE_NAME
  .component COMPONENT_NAME,
    template: '<ng-outlet></ng-outlet>'
    controller: CONTROLLER
    $routeConfig: [
      { path: '/', name: 'TestLanding', component: 'testLanding' }
      { path: '/detail', name: 'TestDetail', component: 'testDetail' }
    ]

module.exports =
  module: MODULE_NAME
  component: COMPONENT_NAME