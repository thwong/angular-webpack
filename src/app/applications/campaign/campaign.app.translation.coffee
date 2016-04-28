'use strict'

MODULE              = require './campaign.app.module.coffee'
GLOBAL_TRANSLATION  = require '../global.translation.json'

angular.module MODULE.name
  .config ($translateProvider) ->
    'ngInject'

    # Provide the global langugage set to this application
    $translateProvider.translations 'en', GLOBAL_TRANSLATION

    # Configure the default language for angular-translate
    $translateProvider.preferredLanguage 'en'
    
    # Configure the security strategy for angular-translate
    $translateProvider.useSanitizeValueStrategy 'sanitize'