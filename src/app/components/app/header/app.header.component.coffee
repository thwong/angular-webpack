'use strict'

MODULE         = require '../../components.module.coffee'
HTML           = require './app.header.ng.html'
COMPONENT_NAME = 'appHeader'

angular.module MODULE.name
  .component COMPONENT_NAME,
    template: HTML

module.exports = name: COMPONENT_NAME
