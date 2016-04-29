'use strict'

TEMPLATE       = require './templates.landing.ng.html'
CONTROLLER     = require './templates.landing.controller.coffee'
LANDING_CARD   = require '../../components/landing-card/landing-card.component.coffee'
CONTROLLER_AS  = 'landing'

module.exports =
  template: TEMPLATE
  controller: CONTROLLER
  controllerAs: CONTROLLER_AS