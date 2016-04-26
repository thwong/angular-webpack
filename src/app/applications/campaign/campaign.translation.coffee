'use strict'

# Require 
GlobalLanguage = require '../global.translation.json'

angular.module 'ws.campaign'
.config ($translateProvider) ->
  'ngInject'

  # Provide the global langugage set to this application
  $translateProvider.translations 'en', GlobalLanguage

  # Configure the default language for angular-translate
  $translateProvider.preferredLanguage 'en'
  
  # Configure the security strategy for angular-translate
  $translateProvider.useSanitizeValueStrategy 'sanitize'