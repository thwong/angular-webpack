'use strict'

TEMPLATE_CAMPAIGN_LANDING_PAGE      = require '../../../templates/landing/templates.landing.coffee'
MODULE                              = require './campaign.landing.module.coffee'
CAMPAIGN_LANDING_FACTORY            = require './campaign.landing.factory.coffee'
COMPONENT_NAME                      = 'campaignLanding'

LANDING_CARD_COMPONENT = require '../../../components/landing-card/landing-card.component.coffee'

angular.module(MODULE.name).requires.push LANDING_CARD_COMPONENT.module

angular.module MODULE.name
  .component COMPONENT_NAME,
    template: TEMPLATE_CAMPAIGN_LANDING_PAGE.template
    controller: TEMPLATE_CAMPAIGN_LANDING_PAGE.controller
    controllerAs: TEMPLATE_CAMPAIGN_LANDING_PAGE.controllerAs

module.exports =
  name: COMPONENT_NAME
  module: MODULE.name
