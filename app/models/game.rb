class Game < ApplicationRecord
  has_many :cards
  
  validates :gameid, presence: true, numericality: { greater_than: 0, only_integer: true }
  validates :datetime, :player1, :player2, :activegame, presence: true
end
