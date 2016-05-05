HEADER            = require '../../../components/app/header/app.header.component.coffee'
FOOTER            = require '../../../components/app/footer/app.footer.component.coffee'
HTML              = require './plan.frame.ng.html'
PLAN_LANDING      = require '../landing/plan.landing.component.coffee'
COMPONENT_NAME    = 'planFrame'

angular.module WS_PLAN
  .component COMPONENT_NAME,
    template: HTML
    $routeConfig: [
      # Plan Landing Page
      { 
        name: 'PlanLanding'
        path: '/'
        component: PLAN_LANDING.name
        useAsDefault: true 
      }
    ]

module.exports = name: COMPONENT_NAME