landingTemplate = require '../../../templates/landing/templates.landing.module.coffee'
campaignLandingFactory = require './campaign.landing.factory.coffee'

module.exports =
  angular.extend landingTemplate, {
    url: ''
    resolve:
      title: -> 'Hello World Campaign Landing'
      factory: -> campaignLandingFactory
  }