# player must match any of the WIN_LINES to win the game #
WIN_LINES = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]
# require module for UI #
  require_relative 'Interface'
# initial array for board values #
  class Board
    attr_reader :lines
    def initialize
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
  end
# initialisation of player1 + player 2 name #
  class Player
    attr_reader :player, :symbol
    def initialize(player, symbol)
      @player = player
      @symbol = symbol
    end
  end
# game class contains the logic to start the game #
  include Interface
  class Game < Board
    attr_accessor :lines, :player, :symbol, :index

    def start
      puts start_game
    end

    def player_selection
      puts player_name
      @player = gets
      puts player_icon
      @symbol = gets
      x = Player.new(player, symbol)
    end

    def player_two
      puts player_name
      @player = gets
      puts player_icon
      @symbol = gets
      y = Player.new(player, symbol)
    end

    def assign_position
      self.show_board
      puts player_input
      @index = gets.chomp.to_i - 1
      p lines[index] = self.symbol
    end
  end

z = Game.new
z.start
z.player_selection
z.player_two
z.assign_position
