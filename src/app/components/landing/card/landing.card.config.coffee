LandingCard = require './landing.card.model.coffee'

sampleCard = new LandingCard
  title: 'Card Title'
  description: 'Card Description'

console.log sampleCard

LandingCardConfig =
  style: {}
  language: {}
  sample: sampleCard

module.exports = LandingCardConfig