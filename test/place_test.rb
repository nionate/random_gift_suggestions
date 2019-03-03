require "minitest/autorun"
require_relative "../place.rb"

class PlaceTest < Minitest::Test
  def test_should_have_name
    place = Place.new name: "place 1"
    assert_equal "place 1", place.name
  end

  def test_should_have_name_and_address
    place = Place.new name: "place 1", address: "address 1"
    assert_equal "place 1", place.name
    assert_equal "address 1", place.address
  end
end