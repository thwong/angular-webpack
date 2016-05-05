LandingFactory = require './campaign.landing.factory.coffee'

CampaignLandingController = (
  CampaignLandingFactory
) ->
  'ngInject'

  @$onInit = ->
    CampaignLandingFactory.init()
    @config = CampaignLandingFactory.config

  return

module.exports =
  name: 'campaignLanding'
  handler: CampaignLandingController