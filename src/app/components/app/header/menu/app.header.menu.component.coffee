HTML = require './app.header.menu.ng.html'
CONTROLLER = require './app.header.menu.controller.coffee'
COMPONENT_NAME = 'appHeaderMenu'

angular.module WS_COMPONENT
  .component COMPONENT_NAME,
    template: HTML
    controller: CONTROLLER.handler
    controllerAs: CONTROLLER.name

module.exports =
  name: COMPONENT_NAME