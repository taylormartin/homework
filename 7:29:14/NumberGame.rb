# 3. Write a number guessing game
#   * The computer should pick a random number
#   * The player guesses, and the computer says if the guess is high or low
#   * Play proceeds until the player gets the number or runs out of guesses
#   Bonus: reverse the game (so the player chooses and the computer guesses). What's
#     the best strategy for the computer? Can you define others?

def pick_num()
  $num = rand(100)
  return nil
end

def guess
  puts "What is your guess?"
  $guess = gets.chomp.to_i
  until $guess == $num do
    if $guess < $num
      puts "Guess higher!"
      $guess = gets.chomp.to_i
    else
      puts "Guess lower!"
      $guess = gets.chomp.to_i
    end
  end
  puts "Correct, my number was #{$num}"
end
