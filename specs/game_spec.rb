require('minitest/autorun')
require('minitest/rg')
require ('pry')
require_relative('../player.rb')
require_relative('../dice.rb')
require_relative('../game.rb')

class TestGame < MiniTest::Test

def setup()
  @player1 = Player.new("Nathan")
  @player2 = Player.new("Claire")
  @die = Dice.new(6)
  @dice = [@die, @die, @die, @die]
  @players = [@player1, @player2]
  @game = Game.new(@players, @dice)
end

def test_check_win
  #both players take turn
  #

end




end
