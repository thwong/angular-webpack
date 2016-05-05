MODULE       = require '../campaign.app.module.coffee'
SERVICE_NAME = 'CampaignService'

angular.module MODULE.name
  .service SERVICE_NAME, (
    $http
    $q
  ) ->
    'ngInject'
    
    service = @

    service.getMyCampaigns = ->
      defer = $q.defer()
      $http
        url: '/_ah/api/marketing_campaign/v1/list_campaigns'
        method: 'GET'
      .then (resp) ->
        defer.resolve resp.data.my_campaigns
      , defer.reject
      defer.promise

    return
