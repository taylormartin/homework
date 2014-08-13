# 1. Survey
#
# Write a questionnaire that takes a list of statements,
# and asks the user to rate how strongly they agree with
# the statement (on a scale of 1 to 5).
#
# Level 1:
#   After the survey is over, print out the user's highest,
#   lowest, and average rating.
#
# Level 2:
#   Write a Survey class and have an external script to
#   drive the user interaction.
#
# Level 3:
#   Write tests for your Survey class

class Survey

  def initialize
    @statements = ["Who?","What?","When?"]
    @answers = []
    @i = 0
  end

  def display_question
      @statements[@i]
  end

  def get_rating(r)
      @answers << r
      @i += 1
  end

  def average
    @answers.reduce(:+) / @answers.length.to_f
  end

  def max
    @answers.max
  end

  def min
    @answers.min
  end

  def finished?
    @statements.length == @answers.length
  end

end
