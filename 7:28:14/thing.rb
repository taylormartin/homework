class Thing
  def initialize(thing)
    @thing = thing
  end

  def sort_list
    @thing.sort
  end

  def length_calc
    @thing.length
  end

  def to_string
    @thing.to_s
  end

  def power_10
    @thing ** 10
  end

  def replace_hash(k, v)
    @thing.replace({k => v})
  end
end
