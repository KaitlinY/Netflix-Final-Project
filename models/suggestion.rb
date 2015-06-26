class Suggestion
  attr_accessor :genre, :rating, :series, :gender, :amount
  
  def initialize(genre, amount, rating, series, gender)
    @genre = genre
    @rating = rating
    @series = series
    @gender = gender
    @amount = amount
  end
end