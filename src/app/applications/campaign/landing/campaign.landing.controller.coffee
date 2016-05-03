CONFIG = require './campaign.landing.config.coffee'

CampaignLandingController = (
  $q
  $timeout
) ->
  'ngInject'

  campaignLanding = @

  campaignLanding.$onInit = ->
    campaignLanding.config = CONFIG

  return

module.exports = name: 'campaignLanding', handler: CampaignLandingController