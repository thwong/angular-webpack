'use strict'

CONTROLLER_NAME = 'TemplateLandingController'

angular.module 'ws.templates.landing'
  .controller CONTROLLER_NAME, (
    $scope
    factory
  ) ->
    'ngInject'

    landing = @
    landing.myList = factory.myList

    landing

module.exports = CONTROLLER_NAME