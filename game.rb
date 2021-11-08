class Game 
  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2) 
  end 

  def start 
    puts "Welcome #{@player1.name} and #{@player2.name}"
    turn 
  end 

  def show_stats
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

  def winner(player)
    puts "#{player.name} wins with a score of #{player.lives}/3"
    puts '---------GAME-OVER--------'
    puts 'Good bye!'
    exit(0)
  end 

  def check_score
    if @player1.lives == 0
      winner(@player2)
    elsif @player2.lives == 0
      winner(@player1)
    end 
  end 

  def turn 
    @player1.question
    check_score
    @player2.question
    check_score
    show_stats
    puts '---------NEW-TURN---------'
    turn
  end 
end 