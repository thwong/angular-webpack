# angular.module (global.WS_COMPONENT = 'WS_COMPONENT'), []
require '../../../applications/global.utility.coffee'
require './app.footer.component.coffee'

describe 'app.footer component', ->

  scope = {}
  $componentController = {}

  beforeEach ->
    angular.mock.module 'WS_COMPONENT'
    angular.mock.inject (
      $rootScope
      _$componentController_
    ) ->
      scope = $rootScope.$new()
      $componentController = _$componentController_

  it 'should have been defined', ->
    component = $componentController 'appFooter'
    expect(component).toBeDefined()