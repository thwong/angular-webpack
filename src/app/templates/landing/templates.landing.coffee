'use strict'

MODULE      = require './templates.landing.module.coffee'
TEMPLATE    = require './templates.landing.ng.html'
FACTORY     = require './templates.landing.factory.coffee'
CONTROLLER  = require './templates.landing.controller.coffee'

module.exports =
  module: MODULE.name
  template: TEMPLATE
  controller: CONTROLLER