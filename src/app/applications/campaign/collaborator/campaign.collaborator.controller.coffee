CollaboratorFactory = require './campaign.collaborator.factory.coffee'

CampaignCollaboratorController = (
  CampaignCollaboratorFactory
) ->
  'ngInject'

  @$onInit = ->
    CampaignCollaboratorFactory.init()
    CampaignCollaboratorFactory.addTab name: 'Strategy', link: 'CampaignCollaboratorAboutSection'
    CampaignCollaboratorFactory.addTab name: 'Goals', link: 'CampaignCollaboratorGoalsSection'
    @tabs = CampaignCollaboratorFactory.tabs

  return

module.exports = name: 'campaignCollaborator', handler: CampaignCollaboratorController
