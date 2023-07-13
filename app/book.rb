require_relative 'item'

class Book < Item
  attr_accessor :cover_state

  def initialize(cover_state)
    super(name, published_date, archived, id)
    @publisher = name
    @cover_state = cover_state
  end

  def can_be_archived?
    return false unless super
    return false unless @cover_state == 'good'

    true
  end
end
