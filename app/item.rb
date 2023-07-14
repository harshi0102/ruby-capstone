class Item
  attr_accessor :published_date, :name, :label
  attr_reader :id, :archived, :genre

  # rubocop:disable Style/OptionalBooleanParameter
  def initialize(name, published_date, archived = false, id = Random.rand(1..1000))
    @id = id
    @name = name
    @published_date = published_date
    @archived = archived
  end
  # rubocop:enable Style/OptionalBooleanParameter

  def add_genre=(genre)
    @genre = genre
    genre.items << self unless genre.items.include?(self)
  end

  def add_label=(label)
    @label = label
    label.items << self unless label.items.include?(self)
  end

  def author=(author)
    @author = author
    author.items.push(self) unless author.items.include?(self)
  end

  def can_be_archived?(silent: false)
    @published_date.year < Time.new.year - 10 || silent
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end
end
