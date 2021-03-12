  require_relative 'Interface.rb'
  require_relative 'Player.rb'
  module Logic
# Mix up which player begins #
  def player_shuffle(px, po)
    new_a = [px, po]
    new_a.shuffle!()
    first_player = new_a[0]
    second_player = new_a[1]
      return first_player, second_player
    end
# Player selects their position on the board #
  def pos_ob(player)
    puts "#{player.name}. Place your #{player.symbol}"
    index = gets.chomp.to_i
# If statement to check for duplicte entry, or invalid entries #
    if duplicate_position(index) || invalid_position(index)
      puts "Invalid position. Try between 1-9!"
      pos_ob(player)
    else
      @lines[index-1] = player.symbol
      show_board
      end
    end
  end
# Validation to check if board position has been utilised #
  def duplicate_position(index)
    @lines[index-1] == "X" || @lines[index-1] == "O"
    end
# Validation to make sure the position is valid between 1-9 #
  def invalid_position(index)
    nums = [1,2,3,4,5,6,7,8,9]
    unless nums.include?(index)
      TRUE
    end
  end
