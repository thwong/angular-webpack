MODULE = require '../../campaign.app.module.coffee'
CONTROLLER = require './campaign.collaborator.goals.controller.coffee'
COMPONENT_NAME = 'campaignCollaboratorGoals'

angular.module MODULE.name
  .component COMPONENT_NAME,
    template: 'This is the goals section inside'
    controller: CONTROLLER.handler
    controllerAs: CONTROLLER.name

module.exports = name: COMPONENT_NAME