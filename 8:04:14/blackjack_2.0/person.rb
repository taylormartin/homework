require "./hand.rb"

class Person
  attr_accessor :hand

  def initialize
    @hand = Hand.new
  end

  def score
    @hand.value
  end

  def blackjack?
    @hand.blackjack?
  end

  def busted?
    @hand.busted?
  end
end

class Player < Person
  attr_accessor :bank
  def initialize
    @bank = 100
  end

  def bet
  end

  def hit
  end

  def leave_game?
  end

end

class Dealer < Person

  def initialize
  end

  def hit
  end

  def stand
  end

end
