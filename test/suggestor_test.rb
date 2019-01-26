require "minitest/autorun"
require_relative "../suggestor"

class SuggestorTest < Minitest::Test

  def test_hello_world_should_not_return_nil
    #suggestor = Suggestor.new
    assert Suggestor.hello_world != nil
  end
end