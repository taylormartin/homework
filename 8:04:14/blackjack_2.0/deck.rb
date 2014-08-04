require "./card.rb"

class Deck

attr_reader :card, :drawn

  def initialize()
    @cards = []
    @drawn = []
    Card::RANKS.each do |x|
      Card::SUITS.each do |y|
        @cards << Card.new(x, y)
      end
    end
  end

  def draw
    card = @cards[rand(@cards.length)]
    @drawn << card
    @cards.delete_at(@cards.index(card))
    return card
  end

end
