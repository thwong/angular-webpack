DEFAULT_CONFIG = require './detail.tabs.config.coffee'
CONFIG = {}

DetailTabsController = (
  
) ->
  'ngInject'

  @$onInit = ->
    CONFIG = angular.extend DEFAULT_CONFIG, @config
    @items = @tabs ? CONFIG.samples

  return

module.exports =
  name: 'detailTabs'
  handler: DetailTabsController