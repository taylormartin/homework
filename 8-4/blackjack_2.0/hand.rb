class Hand
  def initialize
    @cards = []
    @value = 0
  end

  def add(*cards)
    cards.each do |card|
      @cards << card
      @value += card.value
    end
  end

  def value
    if @value > 21
      @cards.each do |card|
        if card.rank == :A
          @value -= 10
        end
      end
    end
    return @value
  end

  def busted?
   if @value > 21
     true
   else
     false
   end
  end
  def blackjack?
    if @value == 21
      true
    else
      false
    end
  end

  def to_s
    hand = []
    @cards.each do |card|
      hand << "#{card.rank.to_s}#{card.suit.to_s}"
    end
    return hand.join(", ")
  end

  def print_first_card
    return "#{@cards[0].rank.to_s}#{@cards[0].suit.to_s}"
  end
end
