  require_relative 'Interface.rb'
  require_relative 'Player.rb'
  module Logic

  def game_active
    while @active == true
        pos_ob(first_player)
        pos_ob(second_player)
      end
    end
# Mix up which player begins #
  def player_shuffle(px, po)
    new_a = [px, po]
    new_a.shuffle!()
    first_player = new_a[0]
    second_player = new_a[1]
      return first_player, second_player
    end

  def pos_ob(player)
    puts "#{player.name}. Place your #{player.symbol}"
    index = gets.chomp.to_i
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
# Condition requirements to win #
  def win_condition
    return "#{player.name} is the winner!" if WIN_LINES.any? do |line|
      line.all? { |lines| @lines == player.symbol }
    end
  end
