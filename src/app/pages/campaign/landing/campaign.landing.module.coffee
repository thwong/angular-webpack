landingTemplate = require '../../../templates/landing/templates.landing.module.coffee'
campaignLandingFactory = require './campaign.landing.factory.coffee'

module.exports =
  url: ''
  resolve:
    factory: (CampaignLandingFactory) ->
      'ngInject'
      CampaignLandingFactory
  template: landingTemplate.template
  controller: landingTemplate.controller
  controllerAs: landingTemplate.controllerAs