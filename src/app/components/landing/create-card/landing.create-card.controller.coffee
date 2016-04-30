R = require 'ramda'

LandingCreateCardController = (
  $translate
) ->
  'ngInject'

  landingList = @

  landingList.$onInit = ->
    console.log 'on card init'
    landingList.style = angular.extend DEFAULT_STYLE, landingList.cpStyle
    translateLang()

  translateLang = ->
    languageMap = angular.extend DEFAULT_LANG, landingList.cpLang
    landingList.language = {}
    R.forEach (pair) ->
      [key, value] = pair
      landingList.language[key] = $translate.instant value
    , R.toPairs languageMap

  DEFAULT_STYLE =
    backgroundClass: 'createCampaign'

  DEFAULT_LANG =
    label: 'landing-create-card.create-card'

  return

module.exports = name: 'landingCreateCard', handler: LandingCreateCardController