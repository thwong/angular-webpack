MODULE = require '../../campaign.app.module.coffee'
COMPONENT_NAME = 'campaignCollaboratorGoals'

angular.module MODULE.name
  .component COMPONENT_NAME,
    template: 'This is the goals section inside'

module.exports = name: COMPONENT_NAME