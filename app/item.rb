class Item
  attr_accessor :published_date, :name, :genre
  attr_reader :id

  def initialize(name, published_date, archived: false, id: rand(1..1000))
    @id = id
    @name = name
    @published_date = published_date
    @archived = archived
  end

  def add_genre(genre)
    @genre = genre
    genre.add_item(self)
  end

  def can_be_archived?
    @published_date.year < Time.new.year - 10
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  def archived?
    @archived
  end
end
