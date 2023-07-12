require_relative '../app/item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(name, published_date, archived: false, on_spotify: false)
    super(name, published_date, archived: archived)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && @on_spotify
  end
end
