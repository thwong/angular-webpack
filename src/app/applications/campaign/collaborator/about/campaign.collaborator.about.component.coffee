MODULE = require '../../campaign.app.module.coffee'
CONTROLLER = require './campaign.collaborator.about.controller.coffee'
TEMPLATE = require './campaign.collaborator.about.template.coffee'
COMPONENT_NAME = 'campaignCollaboratorAbout'

angular.module MODULE.name
  .component COMPONENT_NAME,
    template: TEMPLATE.html
    controller: CONTROLLER.handler
    controllerAs: CONTROLLER.name

module.exports = name: COMPONENT_NAME