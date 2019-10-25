class Card
  attr_accessor :rank, :suit

def initialize(rank, suit)
  @rank = rank
  @suit = suit
end
def random_card
  Card.new(@rank.sample, @suit.sample)
end

def output_card
  puts "#{@rank} of #{@suit}"
end 

end

class Deck
  def initialize
    @suits = ["clubs", "spades", "diamonds", "hearts"]
    @ranks = ["ace", 2, 3, 4, 5, 6, 7, 8, 9, 10, "jack", "king", "queen",]
    @cards = []
    @suits.each do |suit|
      @ranks.each do |rank|
        @cards << Card.new(rank, suit)
      end
    end
  end 

  def output
    @cards.each do |card|
      card.output_card
    end
  end
end

deck = Deck.new
deck.output