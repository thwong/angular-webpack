R = require 'ramda'

LandingListController = (
  $translate
) ->
  'ngInject'

  landingList = @

  landingList.$onInit = ->
    landingList.style = angular.extend DEFAULT_STYLE, landingList.listStyle
    console.log landingList
    translateLang()

  translateLang = ->
    console.log 'custom lang', landingList.listLang
    languageMap = angular.extend DEFAULT_LANG, landingList.listLang
    landingList.language = {}
    R.forEach (pair) ->
      [key, value] = pair
      landingList.language[key] = $translate.instant value
    , R.toPairs languageMap

  DEFAULT_STYLE =
    backgroundClass: 'section sectionBuildCampaign pt-60'
    titleClass: 'title light color-white ta-c tab-mb-20 phn-mb-20'

  DEFAULT_LANG =
    title: 'landing-list.title'

  return

module.exports = name: 'landingList', handler: LandingListController