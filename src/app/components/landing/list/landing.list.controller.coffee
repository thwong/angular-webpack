R = require 'ramda'

LandingListController = (
  $translate
) ->
  'ngInject'

  landingList = @

  landingList.$onInit = ->
    landingList.style = angular.extend DEFAULT_STYLE, landingList.cpStyle
    landingList.language = translateLang DEFAULT_LANG, landingList.cpLang
    landingList.components = angular.extend DEFAULT_COMPONENTS, landingList.cpComponents
    landingList.data = angular.extend DEFAULT_DATA, landingList.cpData
    console.log landingList.components, landingList.data

  translateLang = (_default, _override) ->
    languageMap = angular.extend _default, _override
    language = {}
    R.forEach (pair) ->
      [key, value] = pair
      language[key] = $translate.instant value
    , R.toPairs languageMap

  DEFAULT_STYLE =
    backgroundClass: 'section sectionBuildCampaign pt-60'
    titleClass: 'title light color-white ta-c tab-mb-20 phn-mb-20'
    listClass: 'campaignDetailTiles'

  DEFAULT_LANG =
    title: 'landing-list.title'

  DEFAULT_COMPONENTS =
    createCard:
      style: null
      language: null

  DEFAULT_DATA =
    buttonLink: 'https://www.workspan.com'

  return

module.exports = name: 'landingList', handler: LandingListController