class Feedback
  def initialize(problem, answer)
    @problem = problem
    @answer = answer
  end

  def draw_box(&blk)
    border = (0..30).to_a.map { |_| "-" }.join
    puts "\n" + border + "\n"
    yield
    puts "\n" + border
  end
end

class PositiveFeedback < Feedback
  def display
    draw_box do
      puts "#{descriptor} job solving #{@problem.fact}"
      puts "#{@problem.fact} = #{@problem.solution}"
    end
  end

  def descriptor
    %w(great stupendous awesome incredible fantstic fabulous terrific super good nice).sample.capitalize
  end
end

class NegativeFeedback < Feedback
  def display
    draw_box do
      puts "\n#{descriptor}"
      puts "#{@answer.input} is not the answer to #{@problem.fact}"
      puts "You are off by #{answer_error}"
    end
  end

  def answer_error
    (@problem.solution - @answer.input).abs
  end

  def descriptor
    [
      'You can do better.',
      'Nice try, but not quite.',
      'Think again.',
      'That is not correct, but you are still a star.',
      'Are you sure?',
      'Perfect practice makes perfect.',
      'You are showing a lot of grit.',
      'Concentrate, you have got this!',
    ].sample
  end
end