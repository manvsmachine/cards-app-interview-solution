require 'rails_helper'

RSpec.describe Card, type: :model do

  describe 'drawn -> ' do
    it 'should retreive all drawn cards' do
      card1 = Card.create!(rank: 'J', suit: 'clubs', drawn: true)
      card2 = Card.create!(rank: '3', suit: 'clubs', drawn: true)
      card3 = Card.create!(rank: '8', suit: 'diamonds')
      card4 = Card.create!(rank: 'K', suit: 'spades')

      [card1, card2].each do |card|
        expect(Card.drawn).to include(card)
      end
    end  
  end

  describe '::top' do
    it 'should retrieve the first undrawn card' do
      card1 = Card.create!(rank: 'J', suit: 'clubs', drawn: true)
      card2 = Card.create!(rank: '3', suit: 'clubs', drawn: true)
      card3 = Card.create!(rank: '8', suit: 'diamonds')
      card4 = Card.create!(rank: 'K', suit: 'spades')

      expect(Card.top).to eq(card3)
    end
  end
end
