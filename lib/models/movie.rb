require 'httparty'
require 'json'
require_relative '../../config/api_keys'

class Movie
  include ApiKeys

  attr_accessor :title, :year, :rating, :review

  def initialize(title:, year:, rating: nil, review: nil)
    @title = title
    @year = year
    @rating = rating
    @review = review
  end

  def self.find_by_title(title)
    # Fetch movie details from the OMDb API
    response = HTTParty.get("http://www.omdbapi.com/?t=#{title}&apikey=#{OMDB_API_KEY}")
    data = JSON.parse(response.body)

    if data["Response"] == "True"
      new(title: data["Title"], year: data["Year"])
    else
      nil
    end
  end

  def display_info
    "Title: #{title}, Year: #{year}, Rating: #{rating || 'N/A'}, Review: #{review || 'N/A'}"
  end
end
