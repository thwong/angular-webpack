GLOBAL_TRANSLATION  = require './global.translation.json'
R                   = require 'ramda'

global.WS_COMPONENT = do ->
  __name = 'WS_COMPONENT'
  try
    angular.module __name
  catch
    angular.module __name, []
  __name

WS_APP_DEPENDENCIES = [
  'ngComponentRouter'
  'pascalprecht.translate'
  'ngSanitize'
  WS_COMPONENT
]

global.WS_ADD_TRANSLATION = (module, translation) ->
  angular.module module
    .config ($translateProvider) ->
      'ngInject'
      $translateProvider.translations 'en', translation

global.WS_DEFINE_APP = (module) ->
  try
    angular.module module
  catch
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
  


