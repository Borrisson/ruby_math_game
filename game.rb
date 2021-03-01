class Game
  attr_accessor :player1, :player2, :current_player

  def initialize
    @player1 = Player.new "Player 1"
    @player2 = Player.new "Player 2"
    @current_player = self.player1
  end

  def initiate_game
    while self.player1.lives != 0 && self.player2.lives != 0
      math_question = Question.new(self.current_player?).question
      if math_question
        puts "#{current_player?}: YES! You are correct."
        self.set_player
      else
        puts "#{current_player?}: Seriously? No!"
        self.current_player.lives -= 1
        self.set_player
      end
      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
    end
    puts "#{current_player.player} wins with a score of #{current_player.lives}/3"
  end

  private

  def current_player?
    self.current_player.player
  end

  def set_player
    if current_player.player == "Player 1"
      self.current_player = self.player2
    else
      self.current_player = self.player1
    end
  end
end
