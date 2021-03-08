# Classes + UI + Logic modules #
  require_relative 'Interface.rb'
  require_relative 'Player.rb'
  require_relative 'Logic.rb'
  include Interface
  include Logic
# player must match any of the WIN_LINES to win the game #
  WIN_LINES = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]
# Game class contains the logic to start the game #
  class Game
    attr_accessor :lines, :player, :symbol, :index, :active, :game
    def initialize
      @active = TRUE
      @lines = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end
# lining up the values of the array for the UI #
    def show_board
      puts ""
      puts "  #{@lines[0]}  |  #{@lines[1]}  |  #{@lines[2]} "
      puts "-----+-----+-----"
      puts "  #{@lines[3]}  |  #{@lines[4]}  |  #{@lines[5]} "
      puts "-----+-----+-----"
      puts "  #{@lines[6]}  |  #{@lines[7]}  |  #{@lines[8]} "
      puts ""
    end

    def draw
      @lines.uniq.length == 2
    end

    def win(lines)
    return player.name if WIN_LINES.any? do |line|
      line.all? { |lines| @lines == player.symbol }
    end
  end
end
# Introduction #
  start_game
  sleep(1)
# Player 1 object created #
  px = Player.new("Player One", "X")
  puts "Good luck #{px.name} your symbol is #{px.symbol}."
  sleep(1)
# Player 2 object created #
  po = Player.new("Player Two", "O")
  puts "Good luck #{po.name} your symbol is #{po.symbol}."
  sleep(1)
# Game creation #
  start = Game.new
# Display board #
  start.show_board
# Shuffle players #
  first_player, second_player = player_shuffle(px,po)
  puts "After shuffling, #{first_player.name} goes first."
  sleep(1)
# Choice of position #
  #draw_condition
  while start.draw == FALSE do
  start.pos_ob(first_player)
  start.pos_ob(second_player)
#  end
  end

  player_draw
