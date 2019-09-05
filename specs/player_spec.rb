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

def test_set_score()
  @player.set_score(1234)
  assert_equal(1234, @player.score)
end

end
