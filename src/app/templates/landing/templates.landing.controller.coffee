'use strict'

TemplateLandingController = (
  TemplateLandingFactory
) ->
  'ngInject'
  
  landing = @

  landing.language = TemplateLandingFactory.language

  landing.$routerOnActivate = ->
    TemplateLandingFactory.getTopList().then (list) ->
      landing.topList = list

  return

module.exports = TemplateLandingController