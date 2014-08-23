require "pry"
require"./question"

q1 = Question.new("Who?", 0, "James", "Sarah", "Shelby")
q2 = Question.new("When?", 1, "Sometimes", "Every Day", "Nope")
q3 = Question.new("Where?", 0, "ATV", "Midtown", "Decatur")

questions = [q1, q2, q3]

score = 0
q = 0
i = questions[q].choices.length
j = 1
k = 0
question_answers = []

while q < questions.count

  current_question = questions[q].question
  puts current_question
  puts ""
  puts "Choices:"
  while i > 0
    puts "#{j})#{questions[q].choices[k]}"
    i -= 1
    j += 1
    k += 1
  end
  i = questions[q].choices.length
  j = 1
  k = 0
  puts ""
  puts "What is your answer?"
  puts "Enter 1-#{questions[q].choices.length} to respond"
  user_input = gets.chomp.to_i - 1

  while user_input < 0 || user_input > 2
    puts "Please enter an answer between 1 and 3"
    user_input = gets.chomp.to_i - 1
  end

  the_answer = questions[q].choices[questions[q].answer]
  their_answer = questions[q].choices[user_input]

  response_check = nil

  if the_answer == their_answer
    score += 1
    puts ""
    puts "Right"
    puts ""
    response_check = "Right"
  else
    puts ""
    puts "Wrong"
    puts ""
    response_check = "Wrong"
  end

  q += 1
  question_answers.push([current_question, response_check])

end

puts "Here is your score:#{score}"
puts "Below are the questions you got right and wrong"
puts question_answers
