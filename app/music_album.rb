require_relative 'item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(name, published_date, archived: false, on_spotify: false, id: Random.rand(1..1000))
    super(name, published_date, archived: archived, id: id)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && @on_spotify
  end
end
