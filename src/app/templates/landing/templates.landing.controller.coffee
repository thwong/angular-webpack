'use strict'

module.exports = ($scope) ->
  'ngInject'

  console.log $scope.$id

  campaignLanding = @

  campaignLanding.moduleName = 'TemplateLandingController'

  # campaignLanding.lists = Factory.lists