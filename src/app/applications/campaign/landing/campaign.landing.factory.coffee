MODULE = require '../campaign.app.module.coffee'
DEFAULT_CONFIG = require './campaign.landing.config.coffee'

factory = {}

angular.module MODULE.name
.factory 'CampaignLandingFactory', (
  $q
) ->
  'ngInject'

  factory.init = ->
    setupConfig()

  getMyCampaigns = () ->
    defer = $q.defer()
    defer.resolve items: [1..2]
    defer.promise

  setupConfig = ->
    factory.config = DEFAULT_CONFIG
    factory.config.myCampaigns.dataService =
      get: getMyCampaigns

  factory

module.exports = factory