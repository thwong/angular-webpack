'use strict'

module.exports = ($scope, factory) ->
  'ngInject'

  landing = @
  landing.moduleName = 'TemplateLandingController'
  landing.myList = factory.myList