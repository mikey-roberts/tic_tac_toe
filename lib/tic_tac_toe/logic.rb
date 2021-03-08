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
    index = gets.chomp.to_i - 1
    nums = [1,2,3,4,5,6,7,8,9]
    if @lines.none?(index)
      puts "puts That's not a valid move!"
      pos_ob(player)

    elsif
     @lines[index] == "X"
      puts "That's not a valid move!"
      pos_ob(player)
    else
      @lines[index] = player.symbol
      show_board
      end
    end
  end


  def duplicate_position(index)
    @lines[index] == "X"
    end

  def invalid_position

    end

  def win_condition
    return player.name if WIN_LINES.any? do |line|
      line.all? { |lines| @lines == player.symbol }
    end
  end
