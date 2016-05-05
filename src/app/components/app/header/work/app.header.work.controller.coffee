AppHeaderWorkController = (
  $rootScope
  $scope
) ->
  'ngInject'

  ctrl = @

  @$onInit = ->
    @active = false
    @toggleMenu = toggleMenu
    $rootScope.$on 'global:menu:close', ->
      ctrl.active = false

  toggleMenu = ->
    if @active
      @active = false
    else 
      $rootScope.$broadcast 'global:menu:close'
      @active = true

  return

module.exports =
  name: 'appHeaderWork'
  handler: AppHeaderWorkController