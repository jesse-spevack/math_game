require 'tty-font'
require 'tty-box'
require './lib/round'
require './lib/streak'
require './lib/score'
require './lib/scoreboard'

class Game
  attr_reader :name
  
  def initialize
    @name = welcome_player
    @complete = false
    @score = Score.new
    @streak = Streak.new
  end
  
  def run
    start_round_message

    until complete?
      round = Round.new
      result = round.play

      streak.increment if result.first_guess?
      score.increment if result.success?
      @complete = result.quit?

      print scoreboard
    end
    
    finish
  end

  def complete?
    @complete
  end

  private

  attr_reader :streak, :score

  def scoreboard
    Scoreboard.new(
      name: name,
      score: score,
      streak: streak
    ).display
  end

  def finish
    "Thanks for playing!"
  end
  
  def welcome_player
    font = TTY::Font.new(:doom, letter_spacing: 2)
    puts font.write "Math Game!" 
    puts "What is your name?"
    gets.chomp
  end

  def start_round_message
    puts "Okay, #{name}. Let's see what you have got...."
  end
end
