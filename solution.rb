require 'pry'

class Deck
  attr_accessor :cards

  def initialize
    ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
    self.cards = []
    suits.each do | suit |
      ranks.each do | rank |
        cards << Card.new(suit, rank)
      end
    end
  end

  def choose_card
    chosen_card = cards.delete_at(rand(0..51))
  end

end

class Card
  attr_accessor :rank, :suit
  @@all = []

  def initialize(suit, rank)
    self.rank = rank
    self.suit = suit
    @@all << self
  end

end
