# Level 1:
# * The program should be fully object-oriented
# * The player starts with $100 and bets are $10
# * The only options are hit and stand
# * Players can play as long as they can afford it, and can
#   leave after any round.
# * The dealer reshuffles after every round
# * The included test file should pass (defining Card, Deck, and Hand)
# * Push your homework up to your repository on github
#
# Level 1.5:
# * Add graphics to your script: https://github.com/jdan/rubycards
#
# Level 2:
# * Ignore the included spec file, and test drive development yourself
# * Write specs for any other classes you use (Player? Game?)
#
# Level 3:
# * Allow variable bets
# * Allow double-downs
# * Dealer only reshuffles when the deck runs out
#   * Allow for multiple decks

$suits = [:H, :D, :C, :S]
$ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K, :A]

class Card

  attr_reader :rank
  attr_reader :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def value
    if @rank.is_a? Integer
      @rank
    elsif @rank == :A
      11
    else
      10
    end
  end

end

class Deck

  def initialize()
    @cards = []
    @drawn = []
    $ranks.each do |x|
      $suits.each do |y|
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

  def cards
    @cards
  end

  def drawn
    @drawn
  end

end

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

class Player
  attr_reader :bank

  def initialize
    @bank = 100
  end

  def deposit
    @bank += 10
  end

  def withdraw
    @bank -= 10
  end

  def keep_playing?

  end

end
