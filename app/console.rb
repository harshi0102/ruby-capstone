module Console
  def menu
    puts
    puts 'Please choose an option by entering a number:'

    options = [
      'List all books',
      'List all music albums',
      'List all games',
      'List all genres',
      'List all labels',
      'List all authors',
      'List all movies',
      'List all sources',
      'Add a book',
      'Add a music album',
      'Add a movie',
      'Add a game',
      'Exit'
    ]

    options.each_with_index do |option, index|
      puts "#{index + 1} - #{option}"
    end
  end

  def console_start
    loop do
      menu
      selected = gets.chomp.to_i
      case selected
      when 1
        list_books
      when 2
        list_music_albums
      when 3
        list_games
      when 4
        list_genres
      when 5
        list_labels
      when 6
        list_authors
      when 7
        list_movies
      when 8
        list_sources
      when 9
        add_book
      when 10
        add_music_album
      when 11
        add_movie
      when 12
        add_game
      when 13
        puts 'Thank you for using our app!'
        exit
      else
        puts 'Please choose an appropriate number'
      end

      puts "\n"
    end
  end

  def list_sources
    puts 'List of sources:'
    @sources.each { |source| puts source }
  end
end
