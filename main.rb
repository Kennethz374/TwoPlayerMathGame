# when the game starts it genretes 2 players: player 1 with 3 lives and player 2 with 3 lives

# current player is player 1 and from question class generates a question for player one 
# if player one answers the question correctly, give it a message saying you are correct 
# if the player one answers the question wrong, minus one life and tell him you are wrong

# gamehost change current player to current player 2 

# current player is play 2 and from question class generates a question for player 2 
# if player 2 answers the question correctly, give it a message saying you are correct 
# if the player 2 answers the question wrong, minus one life and tell him you are wrong

# when either player's life reaches 0, the game is over
# annouce winner with current lives
require "./players"
require "./questions"
class GAMEHOST

  def initialize
    @player1 = PLAYERS.new
    @player2 = PLAYERS.new
    @current_player = "Player 1"
    @game_is_over = false

    until @game_is_over
      rotate
    end

  end

  def rotate
    puts "-----NEW TURN-----"
    start_question = QUESTIONS.new(@current_player)
    
    if !start_question.valid?
      if @current_player == "Player 1"
        @player1.is_wrong
      else
        @player2.is_wrong
      end
    end
    
    if @current_player == "Player 1"
      @current_player = "Player 2"
    else 
      @current_player = "Player 1"
    end
    
    
    puts "P1: #{@player1.current_lives}/3 vs P2: #{@player2.current_lives}/3"

    if @player1.current_lives == 0
      puts "Player 2 wins with a score of #{@player2.current_lives}/3 \n-----GAME OVER------\n Good Bye!!"
      @game_is_over = true
    elsif @player2.current_lives == 0
      puts "Player 1 wins with a score of #{@player1.current_lives}/3 \n-----GAME OVER------\n Good Bye!!"
      @game_is_over = true
    end

  end

end

game1 = GAMEHOST.new
game1
  
  

