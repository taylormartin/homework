require "./game"

game = Game.new

puts "Lets Play Blackjack"
puts "Bets are $10 each and you start with $#{game.player.bank}"
keep_playing = true

while game.player.bank > 0 && keep_playing
  deck = Deck.new
  playing = true
  game.deal
  puts
  puts
  puts "You have $#{game.player.bank}"
  puts "Dealer Hand: #{game.dealer.hand.print_first_card}"
  puts
  puts "Your Hand: #{game.player.hand.to_s}"
  puts
  if d_hand.blackjack?
    playing = false
    puts "The dealer got a blackjack, you lose!"
    player.withdraw
    puts "Would you like to keep playing? (yes or no)"
    keep_playing = gets.chomp
  elsif p_hand.blackjack?
    playing = false
    while d_hand.value < 17
      d_hand.add(deck.draw)
    end
    if d_hand.blackjack?
      puts "Dealer also got blackjack"
      puts "Would you like to keep playing? (yes or no)"
      keep_playing = gets.chomp
    else
      puts "Your Hand: #{p_hand.to_s}"
      puts "Dealer Hand: #{d_hand.to_s}"
      puts "You got a blackjack!"
      player.deposit
      puts "Would you like to keep playing? (yes or no)"
      keep_playing = gets.chomp
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
          player.deposit
          puts "Would you like to keep playing? (yes or no)"
          keep_playing = gets.chomp
        elsif d_hand.value > p_hand.value
          playing = false
          puts "Dealer wins"
          puts "Your Hand: #{p_hand.to_s}"
          puts "Dealer Hand: #{d_hand.to_s}"
          player.withdraw
          puts "Would you like to keep playing? (yes or no)"
          keep_playing = gets.chomp
        elsif d_hand.value == p_hand.value
          playing = false
          puts "You tied"
          puts "Your Hand: #{p_hand.to_s}"
          puts "Dealer Hand: #{d_hand.to_s}"
          puts "Would you like to keep playing? (yes or no)"
          keep_playing = gets.chomp
        else
          playing = false
          puts "You won"
          puts "Your Hand: #{p_hand.to_s}"
          puts "Dealer Hand: #{d_hand.to_s}"
          player.deposit
          puts "Would you like to keep playing? (yes or no)"
          keep_playing = gets.chomp
        end
      else
        p_hand.add(deck.draw)
        if p_hand.busted?
          puts "You busted!"
          puts "Your Hand: #{p_hand.to_s}"
          playing = false
          player.withdraw
          puts "Would you like to keep playing? (yes or no)"
          keep_playing = gets.chomp
        else
          puts "Your Hand: #{p_hand.to_s}"
        end
      end
    end
  end
end
