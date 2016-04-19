'use strict'

console.log 'loaded app.mod'

module.exports = angular.module 'ws', [
  'ui.router',
  'ws.campaign'
]