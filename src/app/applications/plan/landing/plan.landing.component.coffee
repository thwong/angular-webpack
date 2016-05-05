LANDING_LIST              = require '../../../components/landing/list/landing.list.component.coffee'
HTML                      = require './plan.landing.ng.html'
CONTROLLER                = require './plan.landing.controller.coffee'
LANGUAGE                  = require './plan.landing.translation.json'
CAMPAIGN_LANDING_FACTORY  = require './plan.landing.factory.coffee'
COMPONENT_NAME            = 'planLanding'

WS_ADD_TRANSLATION WS_PLAN, LANGUAGE

angular.module WS_PLAN
  .component COMPONENT_NAME,
    template: HTML
    controller: CONTROLLER.handler
    controllerAs: CONTROLLER.name

module.exports = name: COMPONENT_NAME
