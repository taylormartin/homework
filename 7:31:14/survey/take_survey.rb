require "./survey.rb"

survey = Survey.new

puts "Please rate on a scale from 1 to 5, 5 being strongly agree "
puts "and 1 being not at all, how you feel about each statement"

until survey.finished? do

  puts survey.display_question

  rating = gets.chomp.to_i

  until rating >= 1 && rating <= 5 do
    puts "Please input a rating from 1 to 5"
    rating = gets.chomp.to_i
  end

  survey.get_rating(rating)

end

puts "Your lowest rating was: #{survey.min}"
puts ""
puts "Your highest rating was: #{survey.max}"
puts ""
puts "Your average rating was: #{survey.average}"
