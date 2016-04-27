'use strict'

angular.module 'ws.campaign', [
  'ngComponentRouter'
  'pascalprecht.translate'
  'ngSanitize'
]

require './campaign.translation.coffee'
require './campaign.route.coffee'