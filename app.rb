require_relative 'lib/models/movie'
require_relative 'lib/models/watchlist'
require_relative 'lib/views/movie_list_view'

# Initialize core components
watchlist = Watchlist.new
movie_view = MovieListView.new(watchlist)

# Display welcome message and start application menu
puts "Welcome to the Movie Watchlist App!"
movie_view.display_menu
