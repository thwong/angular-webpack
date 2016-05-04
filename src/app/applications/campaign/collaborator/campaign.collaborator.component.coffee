'use strict'

MODULE         = require '../campaign.app.module.coffee'
COMPONENT_NAME = 'campaignCollaborator'

(angular.module MODULE.name
  .component 'campaignCollaboratorAboutSection',
    template: 'This is the about section'
)

(angular.module MODULE.name
  .component COMPONENT_NAME,
    template: '<div>This is the campaign collaborator page</div><ng-outlet></ng-outlet>'
    $routeConfig: [
      {
        path: '/'
        name: 'CampaignCollaboratorAboutSection'
        component: 'campaignCollaboratorAboutSection'
        useAsDefault: true
      }
    ]
)

module.exports =
  name: COMPONENT_NAME
