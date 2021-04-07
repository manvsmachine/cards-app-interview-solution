class Card < ApplicationRecord
  validates :rank, presence: true
  validates :suit, presence: true
  
  scope :drawn, -> { where(drawn: true) }

  def self.top
    where(drawn: false).first
  end
end
