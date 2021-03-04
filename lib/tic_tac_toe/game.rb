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
    attr_accessor :lines, :player, :symbol, :index, :active
    def initialize
      @active = true
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
# Introduction #
  puts start_game
  sleep(1)
# Select player name #
  puts "P1 " + player_name
  first_player = gets.chomp
  name_valid(first_player)
# Player 1 object created #
  px = Player.new(first_player, "X")
  puts "Good luck #{px.name} your symbol is #{px.symbol}."
  sleep(1)
# Select player two #
  puts "P2 " + player_name
  second_player = gets.chomp
  name_valid2(second_player)
# Player 2 object created #
  po = Player.new(second_player, "O")
  puts "Good luck #{po.name} your symbol is #{po.symbol}."
  sleep(1)
# Game creation #
  start = Game.new
# Display board #
  start.show_board
# Shuffle players #
  first_go, second_go = player_shuffle(px,po)
  puts "#{first_go.name} goes first. Place your #{first_go.symbol}"
# Choice of position #
  start.assign_position(first_go)
