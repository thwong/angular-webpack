'use strict'

MODULE                    = require '../campaign.app.module.coffee'
CAMPAIGN_LANDING_FACTORY  = require './campaign.landing.factory.coffee'
TEMPLATE                  = require './campaign.landing.template.coffee'
CONTROLLER                = require './campaign.landing.controller.coffee'
LANGUAGE                  = require './campaign.landing.translation.json'
COMPONENT_NAME            = 'campaignLanding'

angular.module MODULE.name
  .config ($translateProvider) ->
    $translateProvider.translations 'en', LANGUAGE

angular.module MODULE.name
  .component COMPONENT_NAME,
    template: TEMPLATE.html
    controller: CONTROLLER.handler
    controllerAs: CONTROLLER.name

module.exports = name: COMPONENT_NAME
