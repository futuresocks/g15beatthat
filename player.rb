class Player

  attr_reader :name, :score

def initialize(name)
  @name = name
  @score = 0
end

def set_score(new_score)
  @score = new_score
end

end
