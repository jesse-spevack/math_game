require './lib/styles'
class Problem
  attr_reader :x, :y

  def initialize
    @x = rand(0..10)
    @y = rand(0..10)
  end

  def solution
    x + y
  end

  def show
    frame = TTY::Box.frame(**Styles.problem_style) do
      "\nWhat is #{fact}?\n"
    end
  end

  def fact
    "#{x} + #{y}"
  end
end