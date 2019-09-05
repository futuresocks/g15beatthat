require('minitest/autorun')
require('minitest/rg')
require ('pry')
require_relative('../player.rb')
require_relative('../dice.rb')

class TestPlayer < MiniTest::Test

def setup
  @player = Player.new("Nathan")
  @die = Dice.new(6)
  @dice = [@die, @die, @die, @die]
end

def test_name()
  assert_equal("Nathan", @player.name)
end

def test_score()
  assert_equal(0, @player.score)
end

def test_set_score()
  @player.set_score(1234)
  assert_equal(1234, @player.score)
end

def test_calculate_score()
  roll = [2,1,3,4]
  expected_result = 4321
  assert_equal(expected_result, @player.calculate_score(roll))
end

def test_player_roll()
  #player roll should return an array of numbers
  #there should be however many numbers as there are dice
  roll = @player.roll(@dice)
  assert_equal(4, roll.length())
end

def test_take_turn()
  #roll dice
  roll = @player.roll(@dice)
  #calculate player score
  final_result = @player.calculate_score(roll)
  #update player score
  @player.set_score(final_result)
  assert_equal(final_result, @player.score)
end

end
