def echo(message)
  message
end

def shout(message)
  message.upcase
end

def repeat(message, number = 2)
  result = message
  (number - 1).times do
    result += " "
    result += message
  end
  result
end

def start_of_word(message, number)
  message[0..number - 1]
end

def first_word(message)
  message.split.first
end

def titleize(message)
  little_words = ["for", "and", "nor", "but", "or", "yet", "so", "a", "an", "the", "at", "around", "by", "after", "along", "for", "from", "of", "on", "to", "with", "without", "over"]
  message = message.split
  message.map! do |word|
    if !little_words.include?(word) || word == message.first
      word.capitalize + " "
    else
      word + " "
    end
  end
  message.join.strip
end
