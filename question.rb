require './player.rb'

class Question

  def initialize
    @first_num = rand(1..20)
    @second_num = rand(1..20)
  end

  def ask_question(player_name)
    puts "#{player_name}, what does #{@first_num} + #{@second_num} equal to?"
  end

  #checking the answer
  def correct_answer?(answer)
    answer == @first_num + @second_num
  end
end
