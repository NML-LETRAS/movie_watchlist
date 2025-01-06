class Watchlist
    attr_accessor :movies
  
    def initialize
      @movies = []
    end
  
    def add_movie(movie)
      movies << movie
    end
  
    def list_movies
      return "Your watchlist is empty!" if movies.empty?
  
      movies.map(&:display_info).join("\n")
    end
  
    def rate_movie(movie_title, rating)
      movie = find_movie(movie_title)
      if movie
        movie.rating = rating
        "Rating added for #{movie_title}."
      else
        "Movie not found in your watchlist."
      end
    end
  
    def review_movie(movie_title, review)
      movie = find_movie(movie_title)
      if movie
        movie.review = review
        "Review added for #{movie_title}."
      else
        "Movie not found in your watchlist."
      end
    end
  
    private
  
    def find_movie(title)
      movies.find { |movie| movie.title.downcase == title.downcase }
    end
  end
  