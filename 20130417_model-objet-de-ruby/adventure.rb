def d(sides)
  1 + rand(sides)
end

class Creature

  attr_reader :health

  def initialize(traits={})
    @health = @max_health = traits[:health] || 5
  end

  def dead?
    @health <= 0
  end

  def alive?
    not dead?
  end

  def inspect
    "#{self.class} #{health}/#{max_health}hp"
  end

protected

  def hit(damage)
    @health -= damage
    message = @health <= 0 ? "dies" : "takes #{damage} damage"

    act(message)
  end

private

  attr_reader :max_health

  def act(message)
    puts "#{self.class} #{message}"
    self
  end

end

class Monster < Creature
  def hit(damage)
    super

    loot! if dead?
  end

  def fight(player)
    player.hit(0)
  end

  def loot!; end
end

module Loot
  module Sword
    def /(other)
      other.hit(d(4))
    end
  end

  module Claymore
    def /(other)
      other.hit(d(8))
    end
  end

  module Shield
    def hit(damage)
      act("damages reduced by the shield")
      super(damage - 1)
    end
  end

  def any?
    Loot.const_get(constants.sample)
  end
  module_function :any?
end

class Wizard < Creature

  def initialize
    super(health: 10)
    @magic = @max_magic = 5
  end

  def sparks(target)
    if @magic <= 0
      act("no more magic!")
      return target
    end

    act("casts sparks on #{target.class}")
    @magic -= 1
    target.hit(1)
  end

  def inspect
    "#{super} #@magic/#@max_magic"
  end

end

class Goblin < Monster
  def initialize
    super(health: 1)
  end

  def loot!
    Loot.any?
  end
end

class Orc < Monster
  def fight(player)
    act("hits the #{player.class} with his dagger")
    player.hit(d(4))
  end
end
