'use strict'

MODULE                 = require './templates.landing.module.coffee'
TEMPLATE               = require './templates.landing.ng.html'
CONTROLLER             = require './templates.landing.controller.coffee'
LANDING_CARD_COMPONENT = require '../../components/landing-card/landing-card.component.coffee'
CONTROLLER_AS          = 'landing'

module.exports =
  module: MODULE.name
  template: TEMPLATE
  controller: CONTROLLER
  controllerAs: CONTROLLER_AS