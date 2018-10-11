class Book
  attr_accessor :author, :page_count
  attr_reader :title, :genre #we remove ':genre' from accessor to reader because if we don't need to edit it our reader we can automate it and save lines!

  GENRES = []

  def initialize(title)
    @title = title
  end

  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end

  def genre=(genre)
    @genre = genre
    GENRES << genre # we define a setter/writer method here because
  end               # in addition to setting, we need to change GENRES

end
