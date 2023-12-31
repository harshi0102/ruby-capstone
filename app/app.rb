require_relative 'console'
require_relative 'music_album'
require_relative 'genre'
require_relative 'music_list'
require_relative 'book'
require_relative 'book_list'
require 'json'
require_relative '../data/genre_crud'
require_relative '../data/music_album_crud'
require_relative '../data/book_crud'
require_relative '../data/label_crud'
require_relative '../data/source_crud'

require_relative '../classes/game_list'
require_relative '../data/games_crud'

require_relative '../classes/authors_list'
require_relative '../data/authors_crud'

require_relative '../classes/movies_list'
require_relative '../data/movies_crud'

class App
  include Console
  include MusicList
  include Booklist
  include GamesList
  include AuthorsList
  include MoviesList

  attr_accessor :books, :music_albums, :games, :authors, :genres,
                :labels, :authors_data, :games_data, :movies, :movies_data, :sources

  def initialize
    @books = []
    @music_albums = []
    @games = []
    @genres = []
    @labels = []
    @authors = []
    @movies = []
    @sources = []
  end

  def run
    @music_albums = load_music_albums
    @genres = load_genres
    @books = populate_books
    @labels = populate_labels
    @games = load_games
    @authors = load_authors
    @movies = load_movies
    @sources = load_sources
  end

  def list_sources
    puts 'List of sources:'
    @sources.each { |source| puts source }
  end
end

def list_labels
  puts 'List of labels:'
  @labels.each_with_index do |label, index|
    puts "#{index + 1} Name: #{label.title}, Color: #{label.color}"
  end
end

def populate_labels
  @labels = load_labels
end

def list_games
  puts 'List of games:'
  @games.each do |game|
    puts "Name: #{game.name}, Genre: #{game.genre.name}, Label: #{game.label.title}"
  end
end

app = App.new
app.run

loop do
  app.console_start
end
