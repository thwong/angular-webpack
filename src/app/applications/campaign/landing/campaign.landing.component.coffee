'use strict'

MODULE                              = require '../campaign.app.module.coffee'
TEMPLATE_CAMPAIGN_LANDING_PAGE      = require '../../../templates/landing/templates.landing.coffee'
CAMPAIGN_LANDING_FACTORY            = require './campaign.landing.factory.coffee'
COMPONENT_NAME                      = 'campaignLanding'

angular.module MODULE.name
  .component COMPONENT_NAME,
    template: TEMPLATE_CAMPAIGN_LANDING_PAGE.template
    controller: TEMPLATE_CAMPAIGN_LANDING_PAGE.controller
    controllerAs: TEMPLATE_CAMPAIGN_LANDING_PAGE.controllerAs

module.exports =
  name: COMPONENT_NAME
  module: MODULE.name
