'use strict'

MODULE         = require '../../components.module.coffee'
HTML           = require './app.footer.ng.html'
COMPONENT_NAME = 'appFooter'

angular.module MODULE.name
  .component COMPONENT_NAME,
    template: HTML

module.exports = name: COMPONENT_NAME
