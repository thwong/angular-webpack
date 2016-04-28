'use strict'

MODULE          = require './campaign.app.module.coffee'
COMPONENT_NAME  = 'campaignApp'

angular.module MODULE.name
  .component COMPONENT_NAME,
    template: 'This is the campaign app'

module.exports =
  name: COMPONENT_NAME