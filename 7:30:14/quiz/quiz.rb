# ### 2. Quiz
#
# You should be able to specify questions (~5-10) like so:
#
# ```
# # Preferably something with better answers ...
# Questions = [
#   {
#      question: "Why did the chicken cross the road?",
#      choices: [
#        "Why does anyone do anything?",
#        "To get to the other side",
#        "Something something something YOUR MOM",
#        "Mu"
#      ],
#      answer: 1
#   },
#   {
#     question: "...",
#     ...
#   }
# ]
# ```
#
# Then running `ruby quiz.rb` should display the questions
# one at a time in random order, ask the user for input,
# and display their score when done. Bonus: display which
# questions the user got right / wrong with answers at the
# end.

$questions = [
      {question: "Why?", choices: ["to learn", "why not"], answer: 0},
      {question: "How?", choices: ["with help", "why not"], answer: 0},
      {question: "Where?", choices: ["ATV", "NYC"], answer: 0},
      {question: "Who?", choices: ["James", "Sarah"], answer: 0},
      {question: "With what?", choices: ["Mac", "PC"], answer: 0}
    ]
    
