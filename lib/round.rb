require './lib/problem'
require './lib/feedback'
require './lib/answer'

class Round
  attr_reader :problem

  def initialize
    @problem = Problem.new
    @quit = false
    @success = false
  end

  def play
    show_problem 

    @answer = Answer.new

    # compelete_game if @answer.quit?

    while @answer != problem.solution 
      puts NegativeFeedback.new(problem, @answer).display
      show_problem
      @answer = Answer.new
    end
    
    puts PositiveFeedback.new(problem, @answer).display
    @success = true
  end

  def show_problem
    @problem.show
  end

  def complete_game
    @quit = true
  end

  def quit?
    @quit
  end

  def success?
    @success
  end
end