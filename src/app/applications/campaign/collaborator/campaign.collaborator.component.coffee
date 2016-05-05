HTML           = require './campaign.collaborator.ng.html'
CONTROLLER     = require './campaign.collaborator.controller.coffee'
ABOUT_SECTION  = require './about/campaign.collaborator.about.component.coffee'
GOALS_SECTION  = require './goals/campaign.collaborator.goals.component.coffee'
TAB            = require '../../../components/detail/tabs/detail.tabs.component.coffee'
COMPONENT_NAME = 'campaignCollaborator'

angular.module WS_CAMPAIGN
  .component COMPONENT_NAME,
    template: HTML
    controller: CONTROLLER.handler
    controllerAs: CONTROLLER.name
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
