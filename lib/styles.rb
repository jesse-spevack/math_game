# typed: strict
require 'sorbet-runtime'

module Styles
  extend T::Sig

  sig {params(name: String).returns(T::Hash[T.untyped, T.untyped])}
  def self.scoreboard_style(name)
    {
      style: {
        fg: :magenta,
        bg: :white
      },
      width: 30,
      align: :center,
      padding: 3,
      title: {
        top_center: "#{name}'s Scoreboard"
      }
    }
  end

  sig {returns(T::Hash[T.untyped, T.untyped])}
  def self.problem_style
    {
      width: 30,
      align: :center,
      padding: 1,
    }
  end
end
