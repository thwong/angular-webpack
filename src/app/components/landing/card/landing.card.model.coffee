MODEL_NAME = 'LandingCard'

LandingCard = (data = {}) ->
  @title = data.title
  @description = data.description
  @link = data.link

angular.module WS_COMPONENT
  .factory MODEL_NAME, ->
    LandingCard

module.exports = LandingCard