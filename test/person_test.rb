require "minitest/autorun"
require_relative "../person.rb"
require_relative "../type.rb"

class PersonTest < Minitest::Test
  def test_should_add_one_preference
    person = Person.new name: "Alexander"
    preference = Type.new "food"
    person.add_gift_preferences([preference])
    
    refute_empty person.preferences
  end

  def test_should_have_two_preferences
    person = Person.new name: "Jairo"
    preference1 = Type.new "videogames"
    preference2 = Type.new "cachaça"
    person.add_gift_preferences([preference1, preference2])

    assert_equal 2, person.preferences.size
  end
end
