require "./blackjack.rb"

puts "Lets Play Blackjack"

deck = Deck.new
p_hand = Hand.new
d_hand = Hand.new

d_hand.add(deck.draw, deck.draw)
p_hand.add(deck.draw, deck.draw)


puts "Dealer Hand: #{d_hand.print_first_card}"
puts
puts "Your Hand: #{p_hand.to_s}"
puts

playing = true

if d_hand.blackjack?
  playing = false
  puts "The dealer got a blackjack, you lose!"
elsif p_hand.blackjack?
  playing = false
  while d_hand.value < 17
    d_hand.add(deck.draw)
  end
  if d_hand.blackjack?
    puts "Dealer also got blackjack"
  else
    puts "Your Hand: #{p_hand.to_s}"
    puts "Dealer Hand: #{d_hand.to_s}"
    puts "You win"
  end
else
  while playing
    puts "Would you like to hit or stand?"
    action = gets.chomp
    if action == "stand"
      while d_hand.value < 17
        d_hand.add(deck.draw)
      end
      if d_hand.busted?
        playing = false
        puts "Dealer busted"
        puts "Your Hand: #{p_hand.to_s}"
        puts "Dealer Hand: #{d_hand.to_s}"
      elsif d_hand.value > p_hand.value
        playing = false
        puts "Dealer wins"
        puts "Your Hand: #{p_hand.to_s}"
        puts "Dealer Hand: #{d_hand.to_s}"
      elsif d_hand.value == p_hand.value
        playing = false
        puts "You tied"
        puts "Your Hand: #{p_hand.to_s}"
        puts "Dealer Hand: #{d_hand.to_s}"
      else
        playing = false
        puts "You won"
        puts "Your Hand: #{p_hand.to_s}"
        puts "Dealer Hand: #{d_hand.to_s}"
      end
    else
      p_hand.add(deck.draw)
      if p_hand.busted?
        puts "You busted!"
        puts "Your Hand: #{p_hand.to_s}"
        playing = false
      else
        puts "Your Hand: #{p_hand.to_s}"
      end
    end
  end
end

=begin
aces aren't being calculated correctly

need to address what happens if the dealer gets black jack
from the start
=end
