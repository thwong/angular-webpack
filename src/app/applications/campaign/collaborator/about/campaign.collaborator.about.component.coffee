MODULE = require '../../campaign.app.module.coffee'
COMPONENT_NAME = 'campaignCollaboratorAbout'

angular.module MODULE.name
  .component COMPONENT_NAME,
    template: 'This is the about section inside'

module.exports = name: COMPONENT_NAME