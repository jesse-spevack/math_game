# typed: strict
require 'sorbet-runtime'
require './lib/styles'

class Scoreboard
  extend T::Sig

  sig{params(name: String, score: Score, streak: Streak).void}
  def initialize(name:, score:, streak:)
    @name = name
    @score = score
    @streak = streak
  end

  sig{returns(String)}
  def display
    TTY::Box.frame(**Styles.scoreboard_style(name)) do 
      "#{scoreboard_text}" 
    end
  end

  private

  sig{returns(String)}
  attr_reader :name

  sig{returns(Score)}
  attr_reader :score

  sig{returns(Streak)}
  attr_reader :streak

  sig{returns(String)}
  def scoreboard_text
    [
      "Score: #{score.show}",
      "Streak: #{streak.count}",
    ].join("\n\n")
  end
end