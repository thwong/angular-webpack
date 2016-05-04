
LandingListConfig = 
  style:
    backgroundClass: 'section sectionBuildCampaign pt-60'
    titleClass: 'title light color-white ta-c tab-mb-20 phn-mb-20'
    listClass: 'campaignDetailTiles'
  language:
    title: 'landing-list.title'
  dataService:
    get: (stageFilter, pageToken, pageSize) ->
      then: (cb) ->
        cb items: [1..pageSize], next_page_token: 'next_page'
  options:
    showCreateLink: true
    initialPageSize: 3
    pageSize: 4
  components:
    createCard: {}

module.exports = LandingListConfig