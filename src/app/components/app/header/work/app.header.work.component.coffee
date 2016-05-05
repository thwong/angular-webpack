HTML = require './app.header.work.ng.html'
CONTROLLER = require './app.header.work.controller.coffee'
COMPONENT_NAME = 'appHeaderWork'

angular.module WS_COMPONENT
  .component COMPONENT_NAME,
    template: HTML
    controller: CONTROLLER.handler
    controllerAs: CONTROLLER.name

module.exports =
  name: COMPONENT_NAME