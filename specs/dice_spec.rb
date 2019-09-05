require('minitest/autorun')
require('minitest/rg')
require_relative('../dice.rb')

class TestDice < MiniTest::Test

  def setup
    @dice = Dice.new(6)
  end

  def test_has_sides()
    assert_equal(6, @dice.sides())
  end

  def test_roll()
    assert_equal([1..6], @dice.roll())
  end 

end
