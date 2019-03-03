require "minitest/autorun"
require_relative "../gift.rb"
require_relative "../type.rb"
require_relative "../place.rb"

class GiftTest < Minitest::Test
  def test_should_have_name
    gift = Gift.new name: "play station"
    assert_equal "play station", gift.name
  end

  def test_should_have_name_and_price
    gift = Gift.new name: "play station", price: 200000
    assert_equal "play station", gift.name
    assert_equal 200000, gift.price
  end

  def test_should_have_a_type
    type = Type.new "videogames"
    gift = Gift.new type: type
    assert_same type, gift.type
  end

  def test_should_have_two_places
    gift = Gift.new name: "play station", price: 200000, type: Type.new("videogames")
    place1 = Place.new name: "place 1"
    place2 = Place.new name: "place 2"
    gift.add_buying_places([place1, place2])

    assert_equal 2, gift.places.size
  end
end