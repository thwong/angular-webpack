'use strict'

TEMPLATE_APPLICATION_FRAME            = require '../../templates/application-frame/templates.application-frame.module.coffee'
MODULE                                = require './campaign.app.module.coffee'
MODULE_CAMPAIGN_LANDING_PAGE          = require './landing/campaign.landing.module.coffee'
MODULE_CAMPAIGN_COLLABORATOR_PAGE     = require './collaborator/campaign.collaborator.module.coffee'
COMPONENT_CAMPAIGN_LANDING_PAGE       = require './landing/campaign.landing.component.coffee'
COMPONENT_CAMPAIGN_COLLABORATOR_PAGE  = require './collaborator/campaign.collaborator.component.coffee'
COMPONENT_NAME                        = 'campaignApp'

angular.module(MODULE.name).requires.push MODULE_CAMPAIGN_LANDING_PAGE.name
angular.module(MODULE.name).requires.push MODULE_CAMPAIGN_COLLABORATOR_PAGE.name

angular.module MODULE.name
  .component COMPONENT_NAME,
    template: TEMPLATE_APPLICATION_FRAME.template
    $routeConfig: [
      # Campaign Landing Page
      { 
        name: 'CampaignLanding'
        path: '/'
        component: COMPONENT_CAMPAIGN_LANDING_PAGE.name
        useAsDefault: true 
      }
      # Campaign Collaborator Page
      {
        name: 'CampaignCollaborator'
        path: '/collaborator/:campaignId'
        component: COMPONENT_CAMPAIGN_COLLABORATOR_PAGE.name
      }
    ]

module.exports =
  name: COMPONENT_NAME