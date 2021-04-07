class CardsController < ApplicationController
  def draw
    if Card.all.empty?
      insert_new_deck
    end
    @card = Card.top

    if @card.nil?
      flash[:notice] = "There are no cards left to draw."
    else
      @card.update(drawn: true)
    end
    redirect_to root_url
  end

  def hand
    @cards = Card.drawn
  end

  def shuffle
    ActiveRecord::Base.transaction do
      Card.delete_all
      insert_new_deck
    end

    flash[:notice] = "The deck has been reshuffled."
    redirect_to root_url
  end

  def show
    Card.update(drawn: true)
    redirect_to root_url
  end

  def insert_new_deck
    ActiveRecord::Base.transaction do
      Deck.shuffled.each do |card|
        Card.create!(card)
      end
    end
  end
end
