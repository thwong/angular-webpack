CAMPAIGN_LANDING       = require '../landing/campaign.landing.component.coffee'
CAMPAIGN_COLLABORATOR  = require '../collaborator/campaign.collaborator.component.coffee'
HEADER                 = require '../../../components/app/header/app.header.component.coffee'
FOOTER                 = require '../../../components/app/footer/app.footer.component.coffee'
HTML                   = require './campaign.frame.ng.html'
COMPONENT_NAME         = 'campaignFrame'

angular.module WS_CAMPAIGN
  .component COMPONENT_NAME,
    template: HTML
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
        path: '/collaborator/:campaignId/...'
        component: CAMPAIGN_COLLABORATOR.name
      }
    ]

module.exports = name: COMPONENT_NAME