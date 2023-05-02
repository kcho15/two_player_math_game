class Game 
  attr_accessor :player_1, :player_2 

  def initialize
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")
    @current_player = @player_1 
  end

  def game_start
    puts "Let's play a game >:)"
  end




  def play
    game_start

    while @player_1.lives > 0 || @player_2.live > 0 do
      puts "-- New Turn --"
      question = Question.new
      question.generate_question(@current_player)
      print "> "
      input = gets.chomp.to_i 

      if question.verify_answer(input)
        puts "#{@current_player.name}: ...That is correct!"
      else 
        puts "#{@current_player.name}: ...That is incorrect. Lose a life!"
        @current_player.lose_life
      end
    end
  end 
end 