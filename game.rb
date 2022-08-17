require './round'

class Game
  def self.run
    name = welcome_player
    game = Game.new(name)
    game.start_round_message

    until game.complete?
      @complete = Round.play
    end
    
    game.finish
  end

  attr_reader :name
  
  def initialize(name)
    @name = name
    @complete = false
  end
  
  def complete?
    @complete
  end

  def finish
    "Thanks for playing!"
  end
  
  def self.welcome_player
    puts "Welcome to math game! What is your name?"
    gets.chomp
  end

  def start_round_message
    puts "Okay, #{name}. Let's see what you have got...."
  end
end

Game.run