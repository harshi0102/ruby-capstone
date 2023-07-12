class Genre
  attr_reader :items, :name

  def initialize(name)
    @name = name
    @items = []
  end

  def add_item(item)
    item.add_genre(self) if item.respond_to?(:add_genre)
    @items << item
  end
end
