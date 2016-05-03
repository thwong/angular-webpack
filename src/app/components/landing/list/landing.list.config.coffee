
LandingListConfig = 
  style:
    backgroundClass: 'section sectionBuildCampaign pt-60'
    titleClass: 'title light color-white ta-c tab-mb-20 phn-mb-20'
    listClass: 'campaignDetailTiles'
  language:
    title: 'landing-list.title'
  dataService:
    samples: [1..3]
    get: ->
      then: (cb) ->
        cb [1..3]
  options:
    showCreateLink: true
    initialPageSize: 3
    pageSize: 4
  components:
    createCard: {}

module.exports = LandingListConfig