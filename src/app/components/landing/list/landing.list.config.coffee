LandingCard = require '../card/landing.card.model.coffee'

sampleCard = new LandingCard
  title: 'Card Title'
  description: 'Card Description'

LandingListConfig = 
  style:
    backgroundClass: 'section sectionBuildCampaign pt-60'
    titleClass: 'title light color-white ta-c tab-mb-20 phn-mb-20'
    listClass: 'campaignDetailTiles'
  language:
    title: 'List Title'
  dataService:
    get: (stageFilter, pageToken, pageSize) ->
      then: (cb) ->
        cb items: [sampleCard], next_page_token: 'next_page'
  options:
    showCreateLink: true
    initialPageSize: 3
    pageSize: 4
  components:
    createCard: {}

module.exports = LandingListConfig