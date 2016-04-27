'use strict'

TemplateApplicationFrame = require '../../templates/application-frame/templates.application-frame.component.coffee'

angular.module('ws.campaign')
  .requires.push TemplateApplicationFrame.module

angular.module 'ws.campaign'
  # Enable the HTML5 clean URL support
  .config ($locationProvider) ->
    'ngInject'
    $locationProvider.html5Mode true
  # Define the entry point for the campaign app application
  .value '$routerRootComponent', TemplateApplicationFrame.component