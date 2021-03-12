# Classes + additional modules #
  require_relative 'Interface.rb'
  require_relative 'Player.rb'
  require_relative 'Logic.rb'
  include Interface
  include Logic
# Player must match any of the WIN_LINES to win the game #
  WIN_LINES = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
# Game class contains the logic to start the game #
  class Game
    attr_accessor :lines, :player, :symbol, :index, :active, :game
    def initialize
      @lines = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end
# Lining up the values of the array for the UI #
    def show_board
      puts ""
      puts "  #{@lines[0]}  |  #{@lines[1]}  |  #{@lines[2]} "
      puts "-----+-----+-----"
      puts "  #{@lines[3]}  |  #{@lines[4]}  |  #{@lines[5]} "
      puts "-----+-----+-----"
      puts "  #{@lines[6]}  |  #{@lines[7]}  |  #{@lines[8]} "
      puts ""
    end
# Checks to see if 2 unique values on the board to confirm draw scenario #
    def draw
      @lines.uniq.length == 2
    end
# Selected player has won the game. Iterates over win combos for truthy value against player symbol #
    def player_won(player)
      WIN_LINES.any? do |line|
          line.all? {|x| @lines[x] == player.symbol}
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
# Loop for players to choose their positions #
  loop do
# First player select position #
  start.pos_ob(first_player)
# If draw or win criteria met then game over #
  if start.player_won(first_player) == TRUE
    return player_wins(first_player)
  elsif start.draw == TRUE
      return player_draw
  end
# Second player goes next #
  start.pos_ob(second_player)
# If draw or win criteria met then game over #
  if start.player_won(second_player) == TRUE
    return player_wins(second_player)
  elsif start.draw == TRUE
      return player_draw
  end
end
