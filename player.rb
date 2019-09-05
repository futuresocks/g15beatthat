class Player

  attr_reader :name, :score

  def initialize(name)
    @name = name
    @score = 0
  end

  def set_score(new_score)
    @score = new_score
  end

  def calculate_score(roll)
    #sort incoming roll highest to lowest
    sorted_roll = roll.sort().reverse()
    #join numbers together
    joined_numbers = sorted_roll.join()
    #return result
    return joined_numbers.to_i()
  end

  def roll(dice)
    result = []
    for die in dice
      roll = die.roll()
      result.push(roll)
    end
    return result
  end
end
