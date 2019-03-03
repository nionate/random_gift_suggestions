require_relative "gift"
require_relative "person"
require_relative "type"
require_relative "place"

class Suggestor
  
  attr_writer :gifts

  def initialize
    @gifts = []
  end

  def self.hello_world
    "Hello world "
  end

  def generate_people
    @people = []
    (0..4).each do |person|
      new_person =  Person.new name: "Person#{person}"
      new_person.add_gift_preferences(["food"])
      @people.push(new_person)
    end
    @people
  end

  def suggest_gift_for(person)
    @gifts.each do |gift| 
      if is_gift_fit_with_prefrences? gift, person.preferences
        return gift
      end
    end
    Gift.new
  end

  def is_gift_fit_with_prefrences?(gift, preferences)
    preferences.include? gift.type
  end
end