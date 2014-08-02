class Triangle
  def initialize(a, b)
    @a = a
    @b = b
  end
  def hyp_calc
    Math.sqrt((@a ** 2) + (@b ** 2))
  end
end
