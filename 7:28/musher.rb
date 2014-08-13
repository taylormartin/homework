class Musher
  def initialize seper
   @seper = seper
  end
  def mush(array)
    array.join(@seper)
  end
end
