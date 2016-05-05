CONTROLLER     = require './campaign.collaborator.about.controller.coffee'
HTML           = require './campaign.collaborator.about.ng.html'
COMPONENT_NAME = 'campaignCollaboratorAbout'

angular.module WS_CAMPAIGN
  .component COMPONENT_NAME,
    template: HTML
    controller: CONTROLLER.handler
    controllerAs: CONTROLLER.name

module.exports =
  name: COMPONENT_NAME