DEFAULT_CONFIG = require './landing.card.config.coffee'

LandingCardController = (

) ->
  'ngInject'

  landingCard = @

  landingCard.$onInit = ->
    landingCard = angular.extend landingCard, DEFAULT_CONFIG, landingCard.config
    landingCard.model = landingCard.card ? landingCard.sample

  return

module.exports = name: 'landingCard', handler: LandingCardController