CampaignLandingController = (

) ->
  'ngInject'

  campaignLanding = @

  campaignLanding.$onInit = ->
    campaignLanding.myCampaigns =
      lang:
        title: 'campaign_landing.build_campaigns'
      components:
        createCard:
          lang:
            label: 'campaign_landing.create_a_campaign'

  return

module.exports = name: 'campaignLanding', handler: CampaignLandingController