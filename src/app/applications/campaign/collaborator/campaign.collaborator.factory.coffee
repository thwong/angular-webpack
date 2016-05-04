MODULE = require '../campaign.app.module.coffee'

factory = {}

angular.module MODULE.name
  .factory 'CampaignCollaboratorFactory', (
    R
  ) ->
    'ngInject'

    factory.init = ->
      factory.tabs = []

    factory.selectTab = (_tab) ->
      R.forEach (tab) ->
        tab.selected = tab.name is _tab.name
      , factory.tabs

    factory.addTab = (tab)->
      factory.tabs.push tab

    factory

module.exports = factory