#comment here

class ListOfTwoNum
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end
  def average
    (@num1 + @num2)/2
  end
end
class NumberList
  def initialize(*num)
    @num = num
    @count = num.length
  end
  def average
    @num.reduce(:+)/@count
  end
end
