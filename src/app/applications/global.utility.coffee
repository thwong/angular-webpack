GLOBAL_TRANSLATION  = require './global.translation.json'
COMPONENT_MODULE    = require '../components/components.module.coffee'
R                   = require 'ramda'

WS_APP_DEPENDENCIES = [
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

global.WS_DEFINE_APP = (module) ->
  angular.module module, WS_APP_DEPENDENCIES
  angular.module module
    .config ($translateProvider, $locationProvider) ->
      'ngInject'
      $translateProvider.preferredLanguage 'en'
      $translateProvider.useSanitizeValueStrategy 'sanitize'
      $locationProvider.html5Mode true
    .constant 'R', R
  WS_ADD_TRANSLATION module, GLOBAL_TRANSLATION
  global[module] = module

global.WS_SET_ROOT_COMPONENT = (module, rootComponent) ->
  angular.module module
    .value '$routerRootComponent', rootComponent.name
  


