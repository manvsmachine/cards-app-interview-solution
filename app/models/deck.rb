class Deck

  SUITS = ["diamonds", "clubs", "spades", "hearts"].freeze
  RANKS = ["2", "3", "4", "5", "6", "7", "8",
           "9", "10", "J", "Q", "K", "A"].freeze

  def self.all
    cards = []

    SUITS.each do |suit|
      RANKS.each do |rank|
        cards << { "suit" => suit, "rank" => rank }
      end
    end
    cards
  end

  def self.shuffled
    all.shuffle
  end
end