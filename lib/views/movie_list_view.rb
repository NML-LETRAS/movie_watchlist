require 'tty-prompt'

class MovieListView
  def initialize(watchlist)
    @prompt = TTY::Prompt.new
    @watchlist = watchlist
  end

  def display_menu
    loop do
      choice = @prompt.select("Choose an action:") do |menu|
        menu.choice "Add a Movie", :add
        menu.choice "List Movies", :list
        menu.choice "Rate a Movie", :rate
        menu.choice "Review a Movie", :review
        menu.choice "Exit", :exit
      end

      case choice
      when :add then add_movie
      when :list then list_movies
      when :rate then rate_movie
      when :review then review_movie
      when :exit then exit_program
      end
    end
  end

  private

  def add_movie
    title = @prompt.ask("Enter the movie title:")
    movie = Movie.find_by_title(title)
    if movie
      @watchlist.add_movie(movie)
      puts "#{movie.title} added to your watchlist."
    else
      puts "Movie not found."
    end
  end

  def list_movies
    puts @watchlist.list_movies
  end

  def rate_movie
    title = @prompt.ask("Enter the movie title:")
    rating = @prompt.ask("Enter your rating (1-5):")
    puts @watchlist.rate_movie(title, rating)
  end

  def review_movie
    title = @prompt.ask("Enter the movie title:")
    review = @prompt.ask("Enter your review:")
    puts @watchlist.review_movie(title, review)
  end

  def exit_program
    puts "Goodbye! Thanks for using the Movie Watchlist App."
    exit
  end
end
