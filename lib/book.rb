class Book
  attr_accessor :author, :page_count
  attr_reader :title

  def initialize(title)
    @title = title
  end

  GENRES = []

  # create the writer for genre and add the logic for the class constant
  def genre=(genre)
    @genre = genre
    GENRES << genre
  end


  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end

end


# Explicitly define the genre= method, to integrate our class constant into the method
# Remove the attr_accessor for :genre since we no longer need to generate a reader AND a writer.
# Add an attr_reader for :genre, since we still want Ruby to generate a reader for us.
