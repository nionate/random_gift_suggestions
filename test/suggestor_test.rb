require "minitest/autorun"
require_relative "../suggestor"

class SuggestorTest < Minitest::Test

  def test_hello_world_should_not_return_nil
    #suggestor = Suggestor.new
    assert Suggestor.hello_world != nil
  end

  def test_should_generate_list_of_five_people
    suggestor = Suggestor.new

    assert_equal 5, suggestor.generate_people.size
  end

  def test_should_suggest_a_gift
    suggestor = Suggestor.new
    suggestor.gifts = [(Gift.new(type:"food"))]
    person = suggestor.generate_people.first
    gift = suggestor.suggest_gift_for(person)
    assert person.preferences.include?(gift.type)
  end
end