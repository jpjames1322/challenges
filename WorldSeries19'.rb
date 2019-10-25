class WorldSeries
  attr_accessor :game, :score, :winner

  def initialize(game, score, winner) 
    @game = game
    @score = score
    @winner = winner
  end
end

class Game
  attr_accessor :game, :score, :winner
  
  def initialize(game, score, winner) 
    @game = game
    @score = score
    @winner = winner
  end
end 

class WinnerLosser
  attr_accessor :game, :score, :winner 
  def initialize(game, score, winner)
    @game = game
    @score = score
    @winner = winner
  end
end



game_1 = WorldSeries.new("Game 1", "5-4", "Nationals")
game_2 = Game.new("Game 2", "12-3", "Nationals")
game_3 = WinnerLosser.new("TBD", "TBD", "TBD")
game_4 = WorldSeries.new("TBD", "TBD", "TBD")
game_5 = Game.new("TBD", "TBD", "TBD")
game_6 = WinnerLosser.new("TBD", "TBD", "TBD")
game_7 = WorldSeries.new("TBD", "TBD", "TBD")

puts "#{game_1.game}"
puts "#{game_1.score}"
puts "#{game_1.winner}"

game_2.game # => "Game 2"
game_2.score # => "12-3"
game_2.winner # => "Nationals"