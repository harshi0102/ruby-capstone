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

def handle_menu_option(selected, app)
  case selected
  when 1..6
    puts app.send("list_#{app.genres[selected - 1]}")
  when 7..9
    app.send("add_#{app.genres[selected - 1]}")
  when 10
    app.add_movie
  when 11
    puts 'Thank you for using our app!'
    return false
  else
    puts 'Please choose an appropriate number'
  end
  true
end

def console_start
  app = App.new
  app.welcome

  running = true
  while running
    menu
    selected = gets.chomp.to_i
    running = handle_menu_option(selected, app)
  end
end

def main
  console_start
end

main
