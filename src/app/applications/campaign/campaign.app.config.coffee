'use strict'

MODULE              = require './campaign.app.module.coffee'
GLOBAL_TRANSLATION  = require '../global.translation.json'
CAMPAIGN_FRAME      = require './frame/campaign.frame.component.coffee'
R                   = require 'ramda'

angular.module MODULE.name

  .config ($translateProvider, $locationProvider) ->
    'ngInject'

    # Configure the angular translaiton sercies
    $translateProvider.translations 'en', GLOBAL_TRANSLATION
    $translateProvider.preferredLanguage 'en'
    $translateProvider.useSanitizeValueStrategy 'sanitize'

    # Enable the HTML5 clean URL support
    $locationProvider.html5Mode true

  .constant 'R', R

  # Define the entry point for the campaign app application
  .value '$routerRootComponent', CAMPAIGN_FRAME.name

