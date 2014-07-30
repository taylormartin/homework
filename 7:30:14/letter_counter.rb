# ### 3. Letter counter
#
# Write a letter counter that takes a string and returns
# a hash showing how many times each letter shows up in
# that strings. Bonus: how many t's are in this file?



puts "What letter would you like to count?"
letter = gets.chomp

# puts "Enter a string so I can count the #{letter}'s in it!"
# string = gets.chomp

string = File.open("homework.md").read

split_string = string.split(//)

split_string = split_string.delete_if {|x| x != letter}

letter_count = split_string.length

puts "There are #{letter_count} #{letter}'s in the string you gave me"
