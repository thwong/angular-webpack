'use strict'

TEMPLATE_CAMPAIGN_COLLABORATOR_PAGE = require '../../../templates/landing/templates.landing.module.coffee'
MODULE                              = require './campaign.landing.module.coffee'
COMPONENT_NAME                      = 'campaignLanding'

angular.module MODULE.name
  .component COMPONENT_NAME,
    template: TEMPLATE_CAMPAIGN_COLLABORATOR_PAGE.template

module.exports =
  name: COMPONENT_NAME
