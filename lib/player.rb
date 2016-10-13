class Player

  attr_reader :name, :score
  DEFAULT_HIT_POINTS = 50

  def initialize(name)
    @name = name
    @score = DEFAULT_HIT_POINTS
  end

  def hit_points
    @score -= 10
  end

end
