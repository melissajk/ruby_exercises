# 2+ same cards #min or #max should return one or the other
# #to_s = string rep of the card "Jack of Diamonds"
# determine lowest and highest ranking card in an array of cards
# #min, #max method (override?)

class Card
  attr_reader :rank, :suit
  include Comparable
  
  VALUES = {
    "Jack" => 11, "Queen" => 12, "King" => 13, "Ace" => 14
  }

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
  
  def value
    VALUES.fetch(rank, rank)
  end
  
  def <=>(other_card)
    value <=> other_card.value
  end
  
  def to_s
    "#{rank} of #{suit}"
  end
end

class Deck
  RANKS = (2..10).to_a + %w(Jack Queen King Ace).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze
  
  def initialize
    reset
  end

  def draw
   reset if @deck.empty?
   @deck.pop
  end
  
  private
  
  def reset
    @deck = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        @deck << Card.new(rank, suit)
      end
    end
    @deck.shuffle!
  end
end


deck = Deck.new
drawn = []
52.times { drawn << deck.draw }
p drawn.count { |card| card.rank == 5 } == 4
p drawn.count { |card| card.suit == 'Hearts' } == 13

drawn2 = []
52.times { drawn2 << deck.draw }
p drawn != drawn2 # Almost always.







