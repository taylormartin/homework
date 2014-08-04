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

end
