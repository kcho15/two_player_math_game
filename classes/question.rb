class Question  

  attr_reader :correct_answer

  def initialize
    @num_1 = rand(20)
    @num_2 = rand(20)
    @correct_answer = @num_1 + @num_2 
  end 

  def generate_question(current_player) 
    puts "#{current_player}: What does #{@num_1} plus #{@num_2} equal?"
  end

  def verify_answer(input)
    input == @correct_answer
  end 

end 

# test = Question.new 
# puts test.generate_question("Player 1")
