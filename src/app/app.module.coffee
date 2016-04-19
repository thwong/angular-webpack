'use strict'

console.log 'loaded app.mod'

module.exports = angular.module 'ws', [
  require 'angular-ui-router'
  'ws.campaign'
]