'use strict'

MODULE                    = require '../campaign.app.module.coffee'
CAMPAIGN_LANDING_FACTORY  = require './campaign.landing.factory.coffee'
TEMPLATE                  = require './campaign.landing.template.coffee'
COMPONENT_NAME            = 'campaignLanding'

angular.module MODULE.name
  .component COMPONENT_NAME,
    template: TEMPLATE.html
    controller: ->
      console.log 'landing page loaded'
    controllerAs: 'campaingLanding'

module.exports =
  name: COMPONENT_NAME
  module: MODULE.name
