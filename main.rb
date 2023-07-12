require_relative './app/app'

def menu
  puts
  puts 'Please choose an option by entering a number'

  options = [
    'List all the books',
    'List all the music albums',
    'List all the games',
    'List all the genres',
    'List all the labels',
    'List all the authors',
    'Add a book',
    'Add a music album',
    'Add a game',
    'Add a movie',
    'Exit'
  ]

  options.each_with_index do |option, index|
    puts "#{index + 1} - #{option}"
  end
end

def console_start
  app = App.new
  app.welcome

  while true
    menu
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
      app.add_book
    when 8
      app.add_music_album
    when 9
      app.add_game
    when 10
      app.add_movie
    when 11
      puts 'Thank you for using our app!'
      break
    else
      puts 'Please choose an appropriate number'
    end
  end
end

def main
  console_start
end

main
