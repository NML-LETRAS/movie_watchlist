# Movie Watchlist

A Ruby-based Command-Line Interface (CLI) application to manage your personal watchlist of movies. The app interacts with the OMDb API to fetch movie details, allowing you to search for movies, add them to your watchlist, rate them, and leave reviews.

## Features

- **Add a Movie**: Search for a movie by title and add it to your watchlist.
- **List Movies**: View all movies in your watchlist, including ratings and reviews.
- **Rate a Movie**: Provide a rating (1-5) for movies in your watchlist.
- **Review a Movie**: Leave a written review for movies in your watchlist.

---

## Project Structure

```
movie_watchlist/
├── app.rb                # Main application file
├── config/
│   └── api_keys.rb       # Contains OMDb API key
├── models/
│   ├── movie.rb          # Handles individual movie objects and API requests
│   └── watchlist.rb      # Manages the user's movie watchlist
├── views/
│   └── movie_list_view.rb # Handles user interface and menu options
├── Gemfile               # Lists dependencies
├── Gemfile.lock          # Tracks gem versions
└── README.md             # Project documentation
```

---

## Prerequisites

- **Ruby** (version 2.7 or higher)
- **Bundler** (for managing gem dependencies)
  
To install Bundler:
```bash
gem install bundler
```

---

## Installation

1. **Clone the Repository**  
   Clone this repository to your local machine:
   ```bash
   git clone https://github.com/NML-LETRAS/movie_watchlist.git
   cd movie_watchlist
   ```

2. **Install Dependencies**  
   Use Bundler to install the required gems:
   ```bash
   bundle install
   ```

3. **Set Up the OMDb API Key**  
   - Sign up for a free API key at [OMDb API](http://www.omdbapi.com/).
   - Create a file named `config/api_keys.rb` and add the following code:
     ```ruby
     module ApiKeys
       OMDB_API_KEY = "your_api_key_here"
     end
     ```
   - Replace `your_api_key_here` with your actual OMDb API key.

---

## Usage

Run the application by executing:
```bash
ruby app.rb
```

### Application Menu
You will be presented with the following options:
1. **Add a Movie**: Search for and add a movie to your watchlist.
2. **List Movies**: Display all movies in your watchlist with their details.
3. **Rate a Movie**: Provide a rating for any movie in your watchlist.
4. **Review a Movie**: Write a review for a selected movie.
5. **Exit**: Exit the application.

---

## Example Workflow

1. **Adding a Movie**:
   - Search for "Inception" to add it to your watchlist.
   - The app fetches details from the OMDb API and adds the movie if it exists.

2. **Listing Movies**:
   - View all the movies you’ve added to your watchlist:
     ```
     Title: Inception, Year: 2010, Rating: N/A, Review: N/A
     ```

3. **Rating a Movie**:
   - Provide a rating (e.g., 5) for "Inception."

4. **Reviewing a Movie**:
   - Write a review such as "Mind-blowing visuals and storytelling!"

---

## Dependencies

The project uses the following gems:
- **httparty**: To make HTTP requests to the OMDb API.
- **tty-prompt**: For interactive CLI prompts.
- **json**: For parsing JSON responses.

---

## Notes

- **Environment Variables**: Consider storing the OMDb API key in an environment variable for added security.
- **Error Handling**: Basic error handling is included, but additional validation and edge case handling can enhance the app.

---

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

---