# constant = require '../campaign.constants.coffee'
# console.log constant
landingTemplate = require '../../../templates/landing/templates.landing.module.coffee'
campaignFactory = require('./campaign.landing.factory.coffee')

module.exports =
  angular.extend landingTemplate, {
    url: '?name'
    resolve:
      title: -> 'Hello World Campaign Landing'
      factory: ->
        title: 'a'
  }