require_relative 'app/app'

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

def handle_option(selected, app)
  case selected
  when 1..6
    handle_list_option(selected, app)
  when 7..10
    handle_add_option(selected, app)
  when 11
    puts 'Thank you for using our app!'
    return false
  else
    puts 'Please choose an appropriate number'
  end
  true
end

def handle_list_option(selected, app)
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
  end
end

def handle_add_option(selected, app)
  case selected
  when 7
    app.add_book
  when 8
    app.add_music_album
  when 9
    app.add_game
  when 10
    app.add_movie
  end
end

def console_start
  app = App.new
  app.welcome

  loop do
    menu
    selected = gets.chomp.to_i
    break unless handle_option(selected, app)
  end
end

def main
  console_start
end

main
