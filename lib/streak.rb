# typed: strict
require 'sorbet-runtime'

class Streak
  extend T::Sig

  sig{returns(Integer)}
  attr_reader :count

  sig{void}
  def initialize
    @count = T.let(0, Integer)
  end

  sig{returns(Integer)}
  def increment 
    @count += 1
  end

  sig{returns(Integer)}
  def break
    @count = 0
  end
end