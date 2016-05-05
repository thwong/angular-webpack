HTML           = require './app.footer.ng.html'
COMPONENT_NAME = 'appFooter'

angular.module WS_COMPONENT
  .component COMPONENT_NAME,
    template: HTML

module.exports =
  name: COMPONENT_NAME
