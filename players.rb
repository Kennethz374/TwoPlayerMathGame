class PLAYERS
  attr_accessor :current_lives

  def initialize
    @current_lives = 3
  end

  def is_wrong
    @current_lives -= 1
  end
end

# player1 = PLAYERS.new
# puts player1.current_lives
# player1.is_wrong
# puts player1.current_lives