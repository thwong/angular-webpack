DEFAULT_CONFIG = require './landing.list.config.coffee'

LandingListController = (
  
) ->
  'ngInject'

  landingList = @
  nextPageToken = null
  stageFilter = null

  landingList.$onInit = ->
    landingList = angular.extend landingList, DEFAULT_CONFIG, landingList.config
    fetchList stageFilter, nextPageToken, landingList.options.initialPageSize

  fetchList = (_filter, _token, _pageSize) ->
    landingList.dataService.get _filter, _token, _pageSize
    .then (list) ->
      if _token then landingList.cards.concat list.items else landingList.cards = list.items
      nextPageToken = list.next_page_token

  return

module.exports = name: 'landingList', handler: LandingListController