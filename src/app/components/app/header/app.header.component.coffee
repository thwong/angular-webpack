HTML = require './app.header.ng.html'
MENU = require './menu/app.header.menu.component.coffee'
WORK = require './work/app.header.work.component.coffee'
COMPONENT_NAME = 'appHeader'

angular.module WS_COMPONENT
  .component COMPONENT_NAME,
    template: HTML

module.exports =
  name: COMPONENT_NAME
