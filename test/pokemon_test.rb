require "test_helpers"

class DPokemonTest # < Minitest::Test
  def test_equal
    pikachu = DPokemon.new("pikachu", 200)
    onix = DPokemon.new("onix", 200)
    lugia = DPokemon.new("lugia", 5000)

    assert_equal pikachu, onix, "pikachu == onix is true"
    assert_not_equal pikachu, lugia, "pikachu == lugia is false"
  end

  def test_greather_than
    pikachu = DPokemon.new("pikachu", 200)
    onix = DPokemon.new("onix", 200)
    lugia = DPokemon.new("lugia", 5000)

    assert_greater_than lugia, pikachu, "lugia > pikachu is true"
    assert_greater_than lugia, onix, "lugia > onix is true"
  end

  def test_lesser_than
    pikachu = DPokemon.new("pikachu", 200)
    onix = DPokemon.new("onix", 200)
    lugia = DPokemon.new("lugia", 5000)

    assert_lesser_than pikachu, lugia, "pikachu < lugia is true"
    assert_lesser_than onix, lugia, "onix < lugia is true"
  end
end
