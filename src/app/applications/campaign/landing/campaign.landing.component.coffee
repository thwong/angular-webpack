CAMPAIGN_LANDING_FACTORY  = require './campaign.landing.factory.coffee'
LANDING_LIST              = require '../../../components/landing/list/landing.list.component.coffee'
HTML                      = require './campaign.landing.ng.html'
CONTROLLER                = require './campaign.landing.controller.coffee'
LANGUAGE                  = require './campaign.landing.translation.json'
COMPONENT_NAME            = 'campaignLanding'

WS_ADD_TRANSLATION WS_CAMPAIGN, LANGUAGE

angular.module WS_CAMPAIGN
  .component COMPONENT_NAME,
    template: HTML
    controller: CONTROLLER.handler
    controllerAs: CONTROLLER.name

module.exports = name: COMPONENT_NAME
