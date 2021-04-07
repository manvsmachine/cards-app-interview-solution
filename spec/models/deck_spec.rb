require 'rails_helper'

RSpec.describe Deck, type: :model do

  ALL_CARDS = [
  {'rank' => '2', 'suit' => 'diamonds'}, {'rank' => '3', 'suit' => 'diamonds'},
  {'rank' => '4', 'suit' => 'diamonds'}, {'rank' => '5', 'suit' => 'diamonds'},
  {'rank' => '6', 'suit' => 'diamonds'}, {'rank' => '7', 'suit' => 'diamonds'},
  {'rank' => '8', 'suit' => 'diamonds'}, {'rank' => '9', 'suit' => 'diamonds'},
  {'rank' => '10', 'suit' => 'diamonds'}, {'rank' => 'J', 'suit' => 'diamonds'},
  {'rank' => 'Q', 'suit' => 'diamonds'}, {'rank' => 'K', 'suit' => 'diamonds'},
  {'rank' => 'A', 'suit' => 'diamonds'}, {'rank' => '2', 'suit' => 'spades'},
  {'rank' => '3', 'suit' => 'spades'}, {'rank' => '4', 'suit' => 'spades'},
  {'rank' => '5', 'suit' => 'spades'}, {'rank' => '6', 'suit' => 'spades'},
  {'rank' => '7', 'suit' => 'spades'}, {'rank' => '8', 'suit' => 'spades'},
  {'rank' => '9', 'suit' => 'spades'}, {'rank' => '10', 'suit' => 'spades'},
  {'rank' => 'J', 'suit' => 'spades'}, {'rank' => 'Q', 'suit' => 'spades'},
  {'rank' => 'K', 'suit' => 'spades'}, {'rank' => 'A', 'suit' => 'spades'},
  {'rank' => '2', 'suit' => 'clubs'}, {'rank' => '3', 'suit' => 'clubs'},
  {'rank' => '4', 'suit' => 'clubs'}, {'rank' => '5', 'suit' => 'clubs'},
  {'rank' => '6', 'suit' => 'clubs'}, {'rank' => '7', 'suit' => 'clubs'},
  {'rank' => '8', 'suit' => 'clubs'}, {'rank' => '9', 'suit' => 'clubs'},
  {'rank' => '10', 'suit' => 'clubs'}, {'rank' => 'J', 'suit' => 'clubs'},
  {'rank' => 'Q', 'suit' => 'clubs'}, {'rank' => 'K', 'suit' => 'clubs'},
  {'rank' => 'A', 'suit' => 'clubs'}, {'rank' => '2', 'suit' => 'hearts'},
  {'rank' => '3', 'suit' => 'hearts'}, {'rank' => '4', 'suit' => 'hearts'},
  {'rank' => '5', 'suit' => 'hearts'}, {'rank' => '6', 'suit' => 'hearts'},
  {'rank' => '7', 'suit' => 'hearts'}, {'rank' => '8', 'suit' => 'hearts'},
  {'rank' => '9', 'suit' => 'hearts'}, {'rank' => '10', 'suit' => 'hearts'},
  {'rank' => 'J', 'suit' => 'hearts'}, {'rank' => 'Q', 'suit' => 'hearts'},
  {'rank' => 'K', 'suit' => 'hearts'}, {'rank' => 'A', 'suit' => 'hearts'}
]
  describe '::all' do
    it 'should return all suit cards in a deck' do
      expect(Set.new(Deck.all)).to eq(Set.new(ALL_CARDS))
    end
  end

  describe '::shuffled' do
    it 'should have all cards but unsorted' do
      unshuffled_deck = Deck.all
      shuffled_deck = Deck.shuffled
      expect(shuffled_deck).not_to eq(unshuffled_deck)
      expect(Set.new(shuffled_deck)).to eq(Set.new(unshuffled_deck))
    end
  end
end
