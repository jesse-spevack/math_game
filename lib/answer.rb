# typed: strict
require 'sorbet-runtime'
require './lib/player_input'

class Answer
  extend T::Sig

  QUIT = 'q'

  sig{returns(String)}
  attr_reader :response

  sig{params(response: String).void}
  def initialize(response: PlayerInput.string)
    @response = response 
  end

  sig{params(solution: Integer).returns(T::Boolean)}
  def ==(solution)
    response.to_i == solution
  end

  sig{returns(T::Boolean)}
  def quit?
    response.downcase == QUIT 
  end
end