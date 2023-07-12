class Item
  attr_accessor :published_date, :name
  attr_reader :id, :archived

  def initialize(name, published_date, archived: false)
    @id = generate_id
    @name = name
    @published_date = published_date
    @archived = archived
  end

  def can_be_archived?
    Time.now - published_date > 10 * 60 # 10 minutes in seconds
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def generate_id
    Random.rand(1..1000)
  end
end
