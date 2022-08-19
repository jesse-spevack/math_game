require './lib/round'

class Game
  attr_reader :name
  
  def initialize
    @name = welcome_player
    @complete = false
    @score = 0
  end
  
  def run
    start_round_message

    until complete?
      round = Round.new
      round.play
      score(round)
    end
    
    game.finish
  end

  def complete?
    @complete
  end

  def score(round)
    @score += 1 if round.success?
  end

  def finish
    "Thanks for playing!"
  end
  
  def welcome_player
    puts "Welcome to math game! What is your name?"
    gets.chomp
  end

  def start_round_message
    puts "Okay, #{name}. Let's see what you have got...."
  end
end
