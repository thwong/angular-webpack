DEFAULT_CONFIG = require './landing.create-card.config.coffee'

LandingCreateCardController = (
  $translate
) ->
  'ngInject'

  @$onInit = ->
    CONFIG = angular.extend DEFAULT_CONFIG, @config
    @style = CONFIG.style
    @language = CONFIG.language

  return

module.exports =
  name: 'landingCreateCard'
  handler: LandingCreateCardController