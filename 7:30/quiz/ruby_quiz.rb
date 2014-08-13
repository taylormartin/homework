require"./quiz"

$questions.shuffle!

score = 0
q = 0
question_answers = []

while q < $questions.count

  current_question = $questions[q][:question]
  puts current_question
  puts ""
  puts "Choices:"
  puts $questions[q][:choices]
  puts ""
  puts "What is your answer?"

  answer_index = $questions[q][:answer]
  the_answer = $questions[q][:choices][answer_index]
  their_answer = gets.chomp
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
