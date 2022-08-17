class Answer
  attr_reader :input

  def initialize
    @input = gets.chomp.to_i
  end

  def ==(solution)
    input == solution
  end
end