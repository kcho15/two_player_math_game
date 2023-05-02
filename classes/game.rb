class Game 
  attr_accessor :player_1, :player_2 

  def initialize
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")
    @current_player = @player_1 
  end

end 