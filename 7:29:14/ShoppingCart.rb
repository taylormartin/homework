# 4. Write a shopping cart class that stores any number of items
#    * Users should be able to add and remove items from the cart
#    * The cart should be able to compute the total checkout price, after applying tax
#    * Shoppers get a 10% discout if they spend more than $100 (before tax)

class ShoppingCart
@@products = {apple: 50, pear: 40, plum: 70, widget: 10}

  def initialize
    @contents = []
  end

  def add(item)
    if @@products.has_key?(item.to_sym)
      @contents.push(item)
    else
      puts"We don't carry #{item}s, but we do have apples, pears, widgets, and plums"
    end
  end

  def remove(item)
    if @contents.include?(item)
      @contents.delete_at(@contents.index(item))
    else
      puts "#{item.capitalize} is not in your cart."
    end
  end

  def checkout
    total = 0
    @contents.each { |x| total += @@products[x.to_sym] }
    if total <= 100
      total = total * 1.07
    else
      # This is tax + discout
      total = total * .963
    end
    puts total
  end

end
