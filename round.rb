require './problem'
require './feedback'
require './answer'

class Round
  attr_reader :problem

  def initialize
    @problem = Problem.new
  end

  def self.play
    round = Round.new
    round.show_problem 

    @answer = Answer.new

    while @answer != round.solution
      puts NegativeFeedback.new(round.problem, @answer).display
      round.show_problem
      @answer = Answer.new
    end
    
    puts PositiveFeedback.new(round.problem, @answer).display
      
  end

  def show_problem
    @problem.show
  end

  def solution
    @problem.solution
  end
end