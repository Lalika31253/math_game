require './player.rb'
require './question.rb'

class Game 
  def initialize
    @player1 = Player.new("Player1")
    @player2 = Player.new("Player2")
    @current_player = @player1
  end


  #Switch players if one of them lost
  def switch_player
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end


  #display score
  def display_score
    puts "Score: Player1 #{@player1.lives}/3 | Player2 #{@player2.lives}/3 " 
  end


  def playing
    question = Question.new
    question.ask_question(@current_player.player_name)
    
    print "> "
    user_answer = $stdin.gets.chomp.to_i

    if question.correct_answer?(user_answer)
      puts "Correct! Keep going"
    else 
      puts "Unfortunately you are wrong!"
      @current_player.lose_life
    end
    display_score
    switch_player
  end


  def play 
    until  @player1.lives == 0 || @player2.lives == 0
      playing
    end
    end_game
  end


  def end_game
    winner = (@player1.lives > 0) ? @player1 : @player2
    puts "#{winner.player_name} wins with a score of #{winner.lives}/3"
    puts "----GAME OVER----"
    puts "Good bye!"
  end
  
end

    

