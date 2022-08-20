# typed: strict
require 'sorbet-runtime'

class RoundState
  extend T::Sig
 
  sig{void}
  def initialize
    @first_guess = T.let(true, T::Boolean)
    @quit = T.let(false, T::Boolean)
    @success = T.let(true, T::Boolean)
  end

  sig{returns(T::Boolean)}
  def quit? 
    @quit
  end

  sig{returns(T::Boolean)}
  def success?
    @success
  end

  sig{returns(T::Boolean)}
  def first_guess?
    @first_guess
  end

  sig{returns(T::Boolean)}
  def quit!
    @first_guess = false
    @success = false
    @quit = true
  end

  sig{returns(T::Boolean)}
  def success!
    @success = true
  end

  sig{returns(T::Boolean)}
  def not_first_guess! 
    @first_guess = false
  end
end