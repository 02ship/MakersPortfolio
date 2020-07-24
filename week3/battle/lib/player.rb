class Player
  attr_reader :name, :hit_points
  DEFAULT_HIT_POINTS = 60
  DEFAULT_DAMAGE = 10
  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def take_damage(damage = DEFAULT_DAMAGE)
    @hit_points -= damage
  end
end
