MODULE = require '../../campaign.app.module.coffee'
COMPONENT_NAME = 'campaignCollaboratorAbout'

(angular.module MODULE.name
  .component 'anotherComponent',
    controller: ->
      console.log 'about page loaded'
    template: 'This is the about page too'
)

(angular.module MODULE.name
  .component COMPONENT_NAME,
    template: 'This is the about page <ng-outlet></ng-outlet>'
    $routeConfig: [
      {
        path: '/'
        name: 'AboutDefault'
        component: 'anotherComponent'
        useAsDefault: true
      }
    ]
)

module.exports = name: COMPONENT_NAME