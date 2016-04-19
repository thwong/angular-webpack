angular.module 'ws.campaign.landing', []

path = require 'path'

landingTemplate = require '../../../templates/landing/templates.landing.module.coffee'

module.exports =
  url: ''
  template: landingTemplate.template
  controller: landingTemplate.controller
  controllerAs: landingTemplate.controllerAs