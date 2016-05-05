HTML           = require './app.header.ng.html'
COMPONENT_NAME = 'appHeader'

angular.module WS_COMPONENT
  .component COMPONENT_NAME,
    template: HTML

module.exports =
  name: COMPONENT_NAME
