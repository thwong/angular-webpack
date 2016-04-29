'use strict'

MODULE         = require '../campaign.app.module.coffee'
COMPONENT_NAME = 'campaignCollaborator'

angular.module MODULE.name
  .component COMPONENT_NAME,
    template: 'This is the campaign collaborator page'

module.exports =
  name: COMPONENT_NAME
