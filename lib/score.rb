# typed: strict
require 'sorbet-runtime'

class Score
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

  sig{returns(String)}
  def show
    (@count * 10).to_s
  end
end