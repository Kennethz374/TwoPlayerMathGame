require "./players"

class QUESTIONS

  def initialize(current_player)
    @number_1 = rand(20)
    @number_2 = rand(20)
    @correct_answer = @number_1 + @number_2
    @current_player = current_player
    @was_valid = nil
    puts "#{@current_player}: What does #{@number_1} plus #{@number_2} equal?"
    validate
  end

  def validate
    @player_answer = gets.chomp
    if @player_answer.to_i == @correct_answer
      puts "#{@current_player}: Correct! Good guess Kid"
      @was_valid = true
      return true
    else 
      puts "#{@current_player}: Incorrect! Sorry!"
      @was_valid = false
      return false
    end
  end

  def valid?
    if @was_valid == nil
      validate
    end
    @was_valid
  end
end

# q1 = QUESTIONS.new("Player one")
# q1