class Book
  attr_accessor :title
  def title
    little_words = ["for", "and", "nor", "but", "or", "yet", "so", "a", "an", "the", "at", "around", "by", "after", "along", "for", "from", "of", "on", "to", "with", "without", "over", "in"]
    @title = @title.split
    @title.map! do |word|
      !little_words.include?(word) || word == @title.first ? word.capitalize + " " : word + " "
    end
    @title.join.strip
  end
end
