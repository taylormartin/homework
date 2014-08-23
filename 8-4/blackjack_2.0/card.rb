class Card

SUITS = [:H, :D, :C, :S]
RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K, :A]

  attr_reader :rank, :suit

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
