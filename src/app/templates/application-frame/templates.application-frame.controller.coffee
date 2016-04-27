'use strict'

MODULE_NAME = require './templates.application-frame.module.coffee'
CONTROLLER_NAME = 'TemplateApplicationFrameController'

angular.module MODULE_NAME
  .controller CONTROLLER_NAME, (

  ) ->
    'ngInject'

    console.log CONTROLLER_NAME + ' is loaded'

module.exports = CONTROLLER_NAME