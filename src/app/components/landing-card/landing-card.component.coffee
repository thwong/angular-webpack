MODULE          = require '../components.module.coffee'
TEMPLATE        = require './landing-card.ng.html'
COMPONENT_NAME  = 'landingCard'

angular.module MODULE.name
  .component COMPONENT_NAME,
    template: TEMPLATE
    controller: ->
      console.log 'landing-card loaded'

module.exports =
  name: COMPONENT_NAME
  module: MODULE.name