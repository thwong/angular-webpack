'use strict'

MODULE         = require '../campaign.app.module.coffee'
TEMPLATE       = require './campaign.collaborator.template.coffee'
ABOUT_SECTION  = require './about/campaign.collaborator.about.component.coffee'
GOALS_SECTION  = require './goals/campaign.collaborator.goals.component.coffee'
COMPONENT_NAME = 'campaignCollaborator'

angular.module MODULE.name
  .component COMPONENT_NAME,
    template: TEMPLATE.html
    $routeConfig: [
      {
        path: '/'
        name: 'CampaignCollaboratorAboutSection'
        component: ABOUT_SECTION.name
        useAsDefault: true
      }
      {
        path: '/goals'
        name: 'CampaignCollaboratorGoalsSection'
        component: GOALS_SECTION.name
      }
    ]

module.exports =
  name: COMPONENT_NAME
