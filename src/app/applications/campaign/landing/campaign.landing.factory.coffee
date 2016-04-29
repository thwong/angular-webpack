'use strict'

R                           = require 'ramda'
MODULE                      = require './campaign.landing.module.coffee'
TEMPLATE_LANDING_INTERFACE  = require '../../../templates/landing/templates.landing.interface.coffee'
LANDING_TRANSLATION         = require './campaign.landing.translation.json'
CAMPAIGN_SERVICE_MODULE     = require '../services/campaign.services.module.coffee'
CAMPAGIN_SERVICE            = require '../services/campaign.services.coffee'

angular.module(MODULE.name).requires.push CAMPAIGN_SERVICE_MODULE.name

angular.module MODULE.name
  .config ($translateProvider) ->
    'ngInject'
    $translateProvider.translations 'en', LANDING_TRANSLATION

angular.module MODULE.name
  .factory 'TemplateLandingFactory', (
      $translate
      $q
      CampaignService
    ) ->
    'ngInject'

    console.log CampaignService

    factory = R.clone TEMPLATE_LANDING_INTERFACE

    factory.language =
      topList:
        title: $translate.instant 'campaign_landing_page.build_campaigns'
    
    factory.getTopList = ->
      defer = $q.defer()
      CampaignService.getMyCampaigns().then (campaigns) ->
        console.log 'got my campaigns list', campaigns
      defer.resolve [{'name': 'a'}]
      defer.promise

    factory