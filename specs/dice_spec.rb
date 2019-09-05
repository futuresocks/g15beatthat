require('minitest/autorun')
require('minitest/rg')
require ('pry')
require_relative('../dice.rb')

class TestDice < MiniTest::Test

  def setup
    @dice = Dice.new(6)
  end

  def test_has_sides()
    assert_equal(6, @dice.sides())
  end

  def test_roll()
    expected_range = [1,2,3,4,5,6]
    roll = @dice.roll()
    is_in_range = expected_range.include?(roll)
    assert_equal(true, is_in_range)
  end

end
