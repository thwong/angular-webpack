MODULE = require '../../campaign.app.module.coffee'
CONTROLLER = require './campaign.collaborator.about.controller.coffee'
COMPONENT_NAME = 'campaignCollaboratorAbout'

angular.module MODULE.name
  .component COMPONENT_NAME,
    template: 'This is the about section inside'
    controller: CONTROLLER.handler
    controllerAs: CONTROLLER.name

module.exports = name: COMPONENT_NAME