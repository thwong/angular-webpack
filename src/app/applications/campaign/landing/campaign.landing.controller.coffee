
LandingFactory = require './campaign.landing.factory.coffee'

CampaignLandingController = (
  CampaignLandingFactory
) ->
  'ngInject'

  campaignLanding = @

  campaignLanding.$onInit = ->
    CampaignLandingFactory.init()
    campaignLanding.config = CampaignLandingFactory.config

  return

module.exports = name: 'campaignLanding', handler: CampaignLandingController