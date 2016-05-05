LandingFactory = require './plan.landing.factory.coffee'

PlanLandingController = (
  PlanLandingFactory
) ->
  'ngInject'

  @$onInit = ->
    PlanLandingFactory.init()
    @config = PlanLandingFactory.config

  return

module.exports =
  name: 'planLanding'
  handler: PlanLandingController