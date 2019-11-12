require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')
require_relative('../bear')


class RiverTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Trout")
    @fish3 = Fish.new("Pike")
    @fish4 = Fish.new("Sardine")

    @river = River.new("Amazon")
  end

  def test_river_name()
    assert_equal("Amazon", @river.name)
  end

  def test_add_fish_to_river()
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
    @river.add_fish(@fish4)
    assert_equal(4, @river.fish_count)
  end

  def test_remove_fish()
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
    @river.add_fish(@fish4)
    @river.remove_fish(@fish2)
    assert_equal(3, @river.fish_count)
  end

end
