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
    puts "\nWhat is #{fact}?\n"
  end

  def fact
    "#{x} + #{y}"
  end
end