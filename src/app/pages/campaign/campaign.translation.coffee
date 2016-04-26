campaignLang = require './campaign.lang.json'

angular.module 'ws.campaign'
.config ($translateProvider, $translatePartialLoaderProvider) ->
  'ngInject'

  $translateProvider.translations 'en', campaignLang

  $translateProvider.preferredLanguage 'en'