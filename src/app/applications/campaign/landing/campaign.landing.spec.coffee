require '../../global.utility.coffee'
WS_DEFINE_APP 'WS_CAMPAIGN'

require './campaign.landing.component.coffee'

describe 'cmapaign.landing component', ->

  scope = {}
  $componentController = {}

  beforeEach ->
    angular.mock.module 'WS_CAMPAIGN'
    angular.mock.inject (
      $rootScope
      _$componentController_
    ) ->
      scope = $rootScope.$new()
      $componentController = _$componentController_

  it 'should have been defined', ->
    component = $componentController 'campaignLanding'
    expect(component).toBeDefined()

  describe '.onInit', ->

    component = {}

    beforeEach ->
      component = $componentController 'campaignLanding'
      component.$onInit()

    it 'should have the configuration object defined', ->
      expect(component.config).toBeDefined()

    it 'should have the myCampaigns configuraiton defined', ->
      expect(component.config.myCampaigns).toBeDefined()