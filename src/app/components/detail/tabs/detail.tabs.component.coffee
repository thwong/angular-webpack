HTML           = require './detail.tabs.ng.html'
CONTROLLER     = require './detail.tabs.controller.coffee'
COMPONENT_NAME = 'detailTabs'

angular.module WS_COMPONENT
  .component COMPONENT_NAME,
    template: HTML
    controller: CONTROLLER.handler
    controllerAs: CONTROLLER.name
    bindings:
      config: '<'
      tabs: '<'

module.exports =
  name: COMPONENT_NAME
