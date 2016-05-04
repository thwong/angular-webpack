COLLABORATOR_FACTORY = require '../campaign.collaborator.factory.coffee'

CampaignCollaboratorAboutController = (
  CampaignCollaboratorFactory
) ->
  'ngInject'

  @.$onInit = ->
    CampaignCollaboratorFactory.selectTab name: 'Strategy'

  return

module.exports = name: 'campaignCollaboratorAbout', handler: CampaignCollaboratorAboutController
