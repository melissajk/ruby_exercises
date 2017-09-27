# numeric 2 --> 10
# 10 < Jack < Queen < King < Ace
# suit - not relevent for rank
# 2+ same cards #min or #max should return one or the other
# #to_s = string rep of the card "Jack of Diamonds"
# determine lowest and highest ranking card in an array of cards
# #min, #max method (override?)

# class Card
#   attr_reader :rank, :suit
#   include Comparable
  
#   VALUES = {
#     "Jack" => 11, "Queen" => 12, "King" => 13, "Ace" => 14
#   }

#   def initialize(rank, suit)
#     @rank = rank
#     @suit = suit
#   end
  
#   def value
#     VALUES.fetch(rank, rank)
#   end
  
#   def <=>(other_card)
#     value <=> other_card.value
#   end
  
#   def to_s
#     "#{rank} of #{suit}"
#   end

# end

# cards = [Card.new(2, 'Hearts'),
#         Card.new(10, 'Diamonds'),
#         Card.new('Ace', 'Clubs')]
# puts cards

# puts cards.min == Card.new(2, 'Hearts')
# puts cards.max == Card.new('Ace', 'Clubs')

# cards = [Card.new(5, 'Hearts')]
# puts cards.min == Card.new(5, 'Hearts')
# puts cards.max == Card.new(5, 'Hearts')

# cards = [Card.new(4, 'Hearts'),
#         Card.new(4, 'Diamonds'),
#         Card.new(10, 'Clubs')]
# puts cards.min.rank == 4
# puts cards.max == Card.new(10, 'Clubs')

# cards = [Card.new(7, 'Diamonds'),
#         Card.new('Jack', 'Diamonds'),
#         Card.new('Jack', 'Spades')]
# puts cards.min == Card.new(7, 'Diamonds')
# puts cards.max.rank == 'Jack'

# cards = [Card.new(8, 'Diamonds'),
#         Card.new(8, 'Clubs'),
#         Card.new(8, 'Spades')]
# puts cards.min.rank == 8
# puts cards.max.rank == 8



# Further Exploration

class Card
  attr_reader :rank, :suit
  include Comparable
  VALUES = {
    "Jack" => 11, "Queen" => 12, "King" => 13, "Ace" => 14
  }
  SUIT_VALUES = {
    "Diamonds" => 0.1, "Hearts" => 0.2, "Clubs" => 0.3, "Spades" => 0.4
  }

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
  
  def value
    VALUES.fetch(rank, rank) + SUIT_VALUES[suit]
  end
  
  def <=>(other_card)
    value <=> other_card.value
  end
  
  def to_s
    "#{rank} of #{suit}"
  end

end

cards = [Card.new(8, 'Diamonds'),
        Card.new(8, 'Clubs'),
        Card.new(8, 'Spades')]
puts cards.min
puts cards.max

