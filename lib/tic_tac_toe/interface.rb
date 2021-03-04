  require_relative 'Player.rb'
# Game diaglogue #
  module Interface

    def start_game
      "Welcome let's play a game of TicTacToe Player"
    end

    def player_name
      "what is your name?"
    end

    def player_input
      "Where would you like to place your symbol on the board?"
    end

    def player_wins
      "Well done #{self.name}. You have completed the game."
    end

    def player_draw
      "It's a draw."
    end
  end
