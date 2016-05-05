GLOBAL_TRANSLATION  = require './global.translation.json'
COMPONENT_MODULE    = require '../components/components.module.coffee'
R                   = require 'ramda'

global.WS_APP_DEPENDENCIES = [
  'ngComponentRouter'
  'pascalprecht.translate'
  'ngSanitize'
  COMPONENT_MODULE.name
]

global.WS_ADD_TRANSLATION = (module, translation) ->
  angular.module module
    .config ($translateProvider) ->
      'ngInject'
      $translateProvider.translations 'en', translation

global.WS_CONFIGURE_APP = (module, rootComponent) ->
  angular.module module
    .config ($translateProvider, $locationProvider) ->
      'ngInject'
      $translateProvider.preferredLanguage 'en'
      $translateProvider.useSanitizeValueStrategy 'sanitize'
      $locationProvider.html5Mode true
    .constant 'R', R
    .value '$routerRootComponent', rootComponent
  WS_ADD_TRANSLATION module, GLOBAL_TRANSLATION


