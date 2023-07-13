require_relative 'app/app'

def main
  app = App.new
  app.run

  loop do
    app.menu
    selected = gets.chomp.to_i

    case selected
    when 1
      app.list_books
    when 2
      app.list_music_albums
    when 3
      app.list_games
    when 4
      app.list_genres
    when 5
      app.list_labels
    when 6
      app.list_authors
    when 7
      app.list_movies
    when 8
      app.list_sources
    when 9
      app.add_book
    when 10
      app.add_music_album
    when 11
      app.add_movie
    when 12
      app.add_game
    when 13
      puts 'Thank you for using our app!'
      exit
    else
      puts 'Please choose an appropriate number'
    end

    puts "\n"
  end
end

main
