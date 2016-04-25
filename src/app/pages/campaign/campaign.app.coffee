'use strict'

angular.module 'ws.campaign', [
  require 'angular-ui-router'
  require 'angular-translate'
  require 'angular-translate-loader-partial'
]

require './campaign.translation.coffee'
require './campaign.route.coffee'
