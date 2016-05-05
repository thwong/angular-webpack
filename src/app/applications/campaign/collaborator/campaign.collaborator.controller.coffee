CollaboratorFactory = require './campaign.collaborator.factory.coffee'

CampaignCollaboratorController = (
  CampaignCollaboratorFactory
) ->
  'ngInject'

  @$onInit = ->
    @tabs = CampaignCollaboratorFactory.tabs

  return

module.exports =
  name: 'campaignCollaborator'
  handler: CampaignCollaboratorController
