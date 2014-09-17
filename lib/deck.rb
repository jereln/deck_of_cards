class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    suits = %w[hearts diamonds clubs spades]
    rank = %w[2 3 4 5 6 7 8 9 10 J Q K A]

    suits.each do |suit|
      rank.each do |rank|
        puts "#{suit}, #{rank}"
        @cards << Card.new(suit, rank)
      end
    end
  end
end

class Card
  attr_accessor :suit, :rank

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end
end
