'use strict'

R = require 'ramda'
MODULE = require './campaign.landing.module.coffee'
TEMPLATE_LANDING_INTERFACE = require '../../../templates/landing/templates.landing.interface.coffee'

angular.module MODULE.name
  .factory 'TemplateLandingFactory', (
      $translate
    ) ->

    factory = R.clone TEMPLATE_LANDING_INTERFACE

    factory