#this is going to be the class responsible for handling everything to do with REVIEWS
#from how they're stored, to how they're displayed in the terminal

class Review

  @@all = []

  attr_accessor :movie_rating, :movie_title, :reviewer_name, :link_to_review

  def initialize(movie_rating, movie_title, reviewer_name)
    @movie_title = movie_title
    @movie_rating = movie_rating
    @reviewer_name = reviewer_name
    @@all << self
  end

  def self.all
    @@all
  end
  

  def self.print_all_reviews
    self.all.each_with_index do |review, index|
      puts "== Review ##{index + 1} ==="
      puts "movie rating: " + review.movie_rating
      puts "movie title: " + review.movie_title
      puts review.reviewer_name
      puts "=================="
    end
  end

end
