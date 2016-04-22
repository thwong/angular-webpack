chai = require 'chai'
chai.should()

DateCard = require './date-card.model.coffee'

describe 'Date Card', ->
  it 'should have a name', ->
    dateCard = new DateCard 'card1'
    dateCard.name.should.equal 'card1'
  