'use strict'

TemplateLandingController = (
  TemplateLandingFactory
) ->
  'ngInject'
  console.log 'template landing controller', TemplateLandingFactory
  @language = TemplateLandingFactory.language

  return

module.exports = TemplateLandingController