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

    answer = Answer.new
    if answer == round.solution
      puts PositiveFeedback.new(round.problem, answer).display
    else
      puts NegativeFeedback.new(round.problem, answer).display
    end
  end

  def show_problem
    @problem.show
  end

  def solution
    @problem.solution
  end
end