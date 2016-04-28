'use strict'

MODULE_NAME = require './campaign.app.module.coffee'

angular.module MODULE_NAME
  .config ($stateProvider, $locationProvider) ->
    'ngInject'

    $locationProvider.html5Mode true

    $stateProvider
      .state 'default',
        url: '/'
        template: 'default template'