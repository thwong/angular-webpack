COLLABORATOR_FACTORY = require '../campaign.collaborator.factory.coffee'

CampaignCollaboratorGoalsController = (
  CampaignCollaboratorFactory
) ->
  'ngInject'

  @$onInit = ->
    CampaignCollaboratorFactory.selectTab name: 'Goals'

  return

module.exports =
  name: 'campaignCollaboratorGoals'
  handler: CampaignCollaboratorGoalsController
