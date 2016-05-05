MODULE = require '../../components.module.coffee'
MODEL_NAME = 'LandingCard'

LandingCard = (data = {}) ->
  @title = data.title
  @description = data.description
  @link = data.link

angular.module MODULE.name
  .factory MODEL_NAME, ->
    LandingCard

module.exports = LandingCard