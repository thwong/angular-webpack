module.exports = -> 
  angular.module('ws.campaign').factory 'CampaignLandingFactory', (

  ) ->

    factory = {}

    console.log 'executed factory code'

    factory.title = 'CampaignLandingFactory'

    factory
