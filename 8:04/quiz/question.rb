class Question

attr_reader :question, :answer, :choices

  def initialize (question, answer, *choices)
    @question = question
    @answer = answer
    @choices = choices
  end
end


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

# Homework 8/414
# Class Questions
#
# Update (/ rewrite) your quiz script to
#
# 1.
#   * Define a Question class
#   * Use Question objects in place of the hashes used
#     earlier
#
# 2.
#   * Be more flexible about user input (can use a or 1)
#   * Validate and handle bad user input
