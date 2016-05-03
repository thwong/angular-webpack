DEFAULT_CONFIG = require './landing.list.config.coffee'

LandingListController = (
  
) ->
  'ngInject'

  landingList = @

  landingList.$onInit = ->
    landingList = angular.extend landingList, DEFAULT_CONFIG, landingList.config
    console.log 'landing list init', landingList.list
    landingList.cards = landingList.list ? landingList.dataService.samples

  fetchList = (stageFilter, pageToken, pageSize) ->
    landingList.dataService.get stageFilter, pageToken, pageSize
    .then (cards) ->
      if pageToken then landingList.cards.concat cards else landingList.cards = cards

  return

module.exports = name: 'landingList', handler: LandingListController