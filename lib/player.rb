class Player

  attr_reader :name, :hit_points
  DEFAULT_HIT_POINTS = 50
  DROPKICK = 10

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HIT_POINTS
  end

  def receive_damage
    @hit_points -= DROPKICK
  end

end
