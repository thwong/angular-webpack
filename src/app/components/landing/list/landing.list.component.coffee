'use strict'

MODULE         = require '../../components.module.coffee'
TEMPLATE       = require './landing.list.template.coffee'
COMPONENT_NAME = 'landingList'

angular.module MODULE.name
  .component COMPONENT_NAME,
    template: TEMPLATE.html

module.exports = name: COMPONENT_NAME
