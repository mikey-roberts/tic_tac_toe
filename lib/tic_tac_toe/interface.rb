module Interface
  def start_game
    "Let's play a game of TicTacToe"
  end

  def player_name
    "What is your name?"
  end

  def player_icon
    "Would you like to choose X or O? as your icon"
  end

  def invalid_character
    "Please re-enter your icon. It can only be X or O."
  end

  def player_input
    "Where would you like to place your symbol on the board?"
  end

  def player_wins(player)
    "Well done #{self.player}. You have completed the game. Your prize is nothing"
  end

  def player_draw
    "It's a draw."
  end
end
