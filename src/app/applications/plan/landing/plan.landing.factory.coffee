DEFAULT_CONFIG = require './plan.landing.config.coffee'
PLAN_SERVICE = require '../services/plan.services.coffee'
LANDING_CARD_MODEL = require '../../../components/landing/card/landing.card.model.coffee'

factory = {}

angular.module WS_PLAN
.factory 'PlanLandingFactory', (
  PlanService
  LandingCard
  $q
  R
) ->
  'ngInject'

  factory.init = ->
    setupConfig()

  getMyPlans = ->
    defer = $q.defer()
    PlanService.getMyPlans().then (data) ->
      __cards = R.map (item) ->
        new LandingCard
          title: item.name
          description: item.qualitative_goal
      , data.items
      defer.resolve items: __cards
    defer.promise

  setupConfig = ->
    factory.config = DEFAULT_CONFIG
    factory.config.myPlans.dataService =
      get: getMyPlans

  factory

module.exports = factory