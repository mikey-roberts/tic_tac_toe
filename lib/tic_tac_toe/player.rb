# initialisation of player1 + player 2 name #
  class Player
    attr_reader :name, :symbol
    def initialize(name, symbol)
      @name = name
      @symbol = symbol
    end
  end
