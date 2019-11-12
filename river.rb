class River

attr_reader :name, :fish

  def initialize(name)
    @name = name
    @fish = []
  end

  def add_fish(fish)
     @fish.push(fish)
  end

  def fish_count()
    @fish.size()
  end

  def remove_fish(fish)
    @fish.delete(fish)
  end

end
