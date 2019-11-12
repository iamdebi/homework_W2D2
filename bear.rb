class Bear

attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def roar()
    return "RAAAWWWWRRRR!"
  end

  def add_fish(fish)
     @stomach.push(fish)
  end

  def add_fish_from_river(river)
    for fish in river.fish()
      add_fish(fish)
    end
    river.remove_fish(fish)
  end

  def fullness()
    @stomach.size()
  end

end
