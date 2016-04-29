COMPONENT_MODULE       = require '../../../components/components.module.coffee'
MODULE                 = require '../campaign.app.module.coffee'
TEMPLATE               = require './campaign.frame.template.coffee'  
CAMPAIGN_LANDING       = require '../landing/campaign.landing.component.coffee'
CAMPAIGN_COLLABORATOR  = require '../collaborator/campaign.collaborator.component.coffee'
COMPONENT_NAME         = 'campaignFrame'

angular.module MODULE.name
  .component COMPONENT_NAME,
    template: TEMPLATE.html
    $routeConfig: [
      # Campaign Landing Page
      { 
        name: 'CampaignLanding'
        path: '/'
        component: CAMPAIGN_LANDING.name
        useAsDefault: true 
      }
      # Campaign Collaborator Page
      {
        name: 'CampaignCollaborator'
        path: '/collaborator/:campaignId'
        component: CAMPAIGN_COLLABORATOR.name
      }
    ]

module.exports = name: COMPONENT_NAME