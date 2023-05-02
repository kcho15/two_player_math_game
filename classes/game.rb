class Game 
  attr_accessor :player_1, :player_2 

  def initialize
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")
    @current_player = @player_1 
  end


  def start_game
    puts "Let's play a game >:)"
  end


  def display_score
    puts "Score: P1 has #{player_1.lives}/3 lives | P2 has #{player_2.lives}/3 lives"
  end
  

  def switch_players
    if @current_player == @player_1
      @current_player = @player_2
    else 
      @current_player = @player_1
    end
  end


  def winner 
    if @player_1.lives == 0
      @winner = @player_2
    else 
      @winner = @player_1
    end
  end 


  def end_game
    puts "-- Game Over --"
    puts "#{@winner.name} wins with a score of #{@winner.lives}/3 lives!"
    puts "-- Goodbye --"

  def play
    start_game

    while @player_1.lives > 0 || @player_2.lives > 0 do
      puts "-- New Turn --"
      question = Question.new
      question.generate_question(@current_player.name)
      print "> "
      input = gets.chomp.to_i 

      if question.verify_answer(input)
        puts "#{@current_player.name}: ...That is correct!"
      else 
        puts "#{@current_player.name}: ...That is incorrect. Lose a life!"
        @current_player.lose_life
      end
      display_score
      switch_players
    end
    winner
    end_game
  end 
  
end 