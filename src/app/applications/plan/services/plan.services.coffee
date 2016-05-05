angular.module WS_PLAN
  .service 'PlanService', (
    $http
    $q
  ) ->
    'ngInject'
    
    service = @

    service.getMyPlans = ->
      defer = $q.defer()
      $http
        url: '/_ah/api/marketing_plan/v1/list_plans'
        method: 'GET'
      .then (resp) -> defer.resolve resp.data.my_plans
      , defer.reject
      defer.promise

    return
