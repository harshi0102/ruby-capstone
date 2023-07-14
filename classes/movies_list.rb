require_relative 'movie'
require_relative '../data/movies_crud'

module MoviesList
  def list_movies
    puts 'List of movies:'
    @movies.each_with_index do |movie, index|
      movie_name = movie['movie_name']
      published_date = movie['published_date']
      puts "#{index}, movie_name: #{movie_name}, published_date: #{published_date}"
    end
  end

  def add_movie
    print 'Enter movie name'
    movie_name = gets.chomp
    print 'Enter Published date '
    published_date = gets.chomp

    movies_data = Movie.new(movie_name, published_date)
    @movies.push(movies_data)
    save_movies(@movies)

    puts 'movie saved successfully!'
  end
end
