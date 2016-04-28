'use strict'

MODULE          = require './campaign.landing.module.coffee'
COMPONENT_NAME  = 'campaignLanding'

angular.module MODULE.name
  .component COMPONENT_NAME,
    template: 'This is the campaign landing page'

module.exports =
  name: COMPONENT_NAME
