require './player'
require './question'

class Game 
  MIN_SCORE = 0;

  attr_accessor :current_player, :player1, :player2, :active
  
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = player1
    @active = true
  end

  def ask_question     
    question = Question.new  
    print "#{current_player.name}: #{question.text} "
    answer = gets.chomp.to_i
    
    answer_result = increment_score(question.check_answer(answer))
    puts "#{current_player.name}: #{answer_result} "
    puts "P1: #{player1.score} vs P2: #{player2.score}"
  end

  def increment_score(answer_correct)
    if(answer_correct)      
      "YES! You are correct."
    else 
      self.current_player.score -= 1      
      "Seriously? No!"
    end
  end

  def switch_player(player)    
    if(player.name == "Player 1")      
      self.current_player = player2      
    end

    if(player.name == "Player 2")      
      self.current_player = player1      
    end
  end

  def monitor
    if(player1.score == 0|| player2.score == 0)
      self.active = false
    end
  end
  
  def start_game
    ask_question
    switch_player(current_player)
    monitor
  end
  
end
