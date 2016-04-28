'use strict'

TEMPLATE = require './templates.application-frame.ng.html'
MODULE   = require './templates.application-frame.coffee'

module.exports =
  module: MODULE.name
  template: TEMPLATE