DEFAULT_CONFIG = require './landing.create-card.config.coffee'

LandingCreateCardController = (
  $translate
) ->
  'ngInject'

  landingCreateCard = @

  landingCreateCard.$onInit = ->
    CONFIG = angular.extend DEFAULT_CONFIG, landingCreateCard.config
    landingCreateCard.style = CONFIG.style
    landingCreateCard.language = CONFIG.language

  return

module.exports = name: 'landingCreateCard', handler: LandingCreateCardController