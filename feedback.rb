class Feedback
  def initialize(problem, answer)
    @problem = problem
    @answer = answer
  end
end

class PositiveFeedback < Feedback
  def display
    puts "Great job solving #{@problem.fact}"
  end
end

class NegativeFeedback < Feedback
  def display
    puts "#{@answer.input} is not the answer to #{@problem.fact}"
    puts "#{@problem.fact} = #{@problem.solution}"
  end
end