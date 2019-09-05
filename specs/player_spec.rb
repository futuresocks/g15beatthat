require('minitest/autorun')
require('minitest/rg')
require ('pry')
require_relative('../player.rb')
require_relative('../dice.rb')

class TestPlayer < MiniTest::Test

def setup
  @player = Player.new("Nathan")
end

def test_name()
  assert_equal("Nathan", @player.name)
end

def test_score()
  assert_equal(0, @player.score)
end

def test_roll_dice()

end

end
