require "pry-byebug"
class Person
  attr_reader :name,:preferences

  def initialize(**args)
    @name = args[:name]
    @preferences = args[:preferences] ? args[:preferences] : []
  end

  def add_gift_preferences(preferences)
    @preferences.concat(preferences)
  end
end