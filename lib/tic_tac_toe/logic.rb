  require_relative 'Interface.rb'
  require_relative 'Player.rb'


  module Logic

  def name_valid(first_player)
    if first_player == ""
      puts "Try again"
      gets.chomp
    end
  end

  def name_valid2(second_player)
    if second_player == ""
      puts "Try again"
      gets.chomp
    end
  end

  def assign_position(index)
    self.show_board
    puts player_input
    @index = gets.chomp.to_i - 1
    lines[index] = @index
  end



  def player_shuffle(px, po)
    val = rand(1..2)
    val == 1 ? px : po
    end
  end

  def win_condition
  end

  def duplicate_position
  end

  def invalid_position

  end
