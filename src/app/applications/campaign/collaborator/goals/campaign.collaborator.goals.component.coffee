MODULE = require '../../campaign.app.module.coffee'
CONTROLLER = require './campaign.collaborator.goals.controller.coffee'
HTML = require './campaign.collaborator.goals.ng.html'
COMPONENT_NAME = 'campaignCollaboratorGoals'

angular.module MODULE.name
  .component COMPONENT_NAME,
    template: HTML
    controller: CONTROLLER.handler
    controllerAs: CONTROLLER.name

module.exports = name: COMPONENT_NAME