class Gift
  attr_reader :name,:price,:type,:places

  def initialize (**args)
    @name = args[:name]
    @price = args[:price]
    @type = args[:type]
    @places = args[:places] ? args[:places] : []
  end

  def add_buying_places(places)
    @places.concat(places)
  end
end