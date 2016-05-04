MODULE = require '../campaign.app.module.coffee'
DEFAULT_CONFIG = require './campaign.landing.config.coffee'
CAMPAIGN_SERVICE = require '../services/campaign.services.coffee'
LANDING_CARD_MODEL = require '../../../components/landing/card/landing.card.model.coffee'

factory = {}

angular.module MODULE.name
.factory 'CampaignLandingFactory', (
  CampaignService
  LandingCard
  $q
  R
) ->
  'ngInject'

  factory.init = ->
    setupConfig()

  getMyCampaigns = ->
    defer = $q.defer()
    CampaignService.getMyCampaigns().then (data) ->
      __cards = R.map (item) ->
        new LandingCard
          title: item.name
          description: item.qualitative_goal
      , data.items
      defer.resolve items: __cards
    defer.promise

  setupConfig = ->
    factory.config = DEFAULT_CONFIG
    factory.config.myCampaigns.dataService =
      get: getMyCampaigns

  factory

module.exports = factory