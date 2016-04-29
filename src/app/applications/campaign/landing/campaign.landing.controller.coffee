CampaignLandingController = (

) ->
  'ngInject'

  campaignLanding = @

  campaignLanding.$onInit = ->
    campaignLanding.myCampaigns =
      lang:
        title: 'campaign_landing.build_campaigns'

  return

module.exports = name: 'campaignLanding', handler: CampaignLandingController