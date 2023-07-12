class Item
  attr_accessor :name, :published_date, :archived

  def initialize(name, published_date, archived: false)
    @name = name
    @published_date = published_date
    @archived = archived
  end

  def can_be_archived?
    (Time.now.year - @published_date.year) >= 10
  end
end
