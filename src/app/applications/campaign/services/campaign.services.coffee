angular.module WS_CAMPAIGN
  .service 'CampaignService', (
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
      .then (resp) -> defer.resolve resp.data.my_campaigns
      , defer.reject
      defer.promise

    return
