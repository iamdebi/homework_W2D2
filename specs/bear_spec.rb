require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class BearTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Trout")
    @fish3 = Fish.new("Pike")
    @fish4 = Fish.new("Sardine")

    @river = River.new("Amazon")

    @bear1 = Bear.new("Yogi", "Grizzy")
    @bear2 = Bear.new("Po", "Panda")
  end



  def test_bear_name()
    assert_equal("Yogi", @bear1.name)
  end


  def test_empty_stomach()
    assert_equal(0, @bear1.fullness)
  end

  def test_add_fish_to_bear()
    @river.add_fish(@fish1)
    @bear1.add_fish_from_river(@river)
    assert_equal(1, @bear1.fullness)
    assert_equal(0, @river.fish_count)
  end


  def test_bear_roar()
    assert_equal("RAAAWWWWRRRR!", @bear1.roar())
  end


end
