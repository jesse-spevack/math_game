# typed: strict
require 'sorbet-runtime'

require './lib/answer'
require './lib/feedback'
require './lib/problem'
require './lib/round_state'

class Round
  extend T::Sig

  sig{returns(Problem)}
  attr_reader :problem

  sig{void}
  def initialize
    @problem = T.let(Problem.new, Problem)
    @state = T.let(RoundState.new, RoundState)
  end

  sig{returns(RoundState)}
  def play
    print problem.show

    answer = T.let(Answer.new, Answer)

    if answer.quit?
      state.quit!
    else
      while answer != problem.solution 
        state.not_first_guess!
        puts NegativeFeedback.new(problem, answer).display
        problem.show
        answer = Answer.new
      end
      
      puts PositiveFeedback.new(problem, answer).display
      state.success!
    end

    state
  end

  private

  sig{returns(RoundState)}
  attr_reader :state
end