# typed: strict
require 'sorbet-runtime'
require './lib/player_input'

class Answer
  extend T::Sig

  sig{returns(Integer)}
  attr_reader :response

  sig{params(response: Integer).void}
  def initialize(response: PlayerInput.integer)
    @response = response 
  end

  sig{params(solution: Integer).returns(T::Boolean)}
  def ==(solution)
    response == solution
  end
end