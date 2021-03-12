  require_relative 'Player.rb'
# Game diaglogue #
  module Interface
# Beginning of the game #
  def start_game
    puts "Welcome let's play a game of TicTacToe Player"
  end
# Win dialogue #
  def player_wins(player)
    puts "Well done #{player.name}. You have won the game."
  end
# Draw dialogue #
  def player_draw
    puts "It's a draw!."
  end
end
