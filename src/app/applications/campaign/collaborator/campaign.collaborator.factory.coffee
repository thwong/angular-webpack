MODULE = require '../campaign.app.module.coffee'
DETAIL_TABS_SERVICE = require '../../../components/detail/tabs/detail.tabs.service.coffee'

factory = {}

angular.module MODULE.name
  .factory 'CampaignCollaboratorFactory', (
    R
    DetailTabsService
  ) ->
    'ngInject'

    factory.tabs = [
      { name: 'Strategy', link: '/campaign/collaborator/1' }
      { name: 'Goals', link: '/campaign/collaborator/1/goals'}
    ]

    factory.selectTab = DetailTabsService.bind tabs: factory.tabs

    factory

module.exports = factory