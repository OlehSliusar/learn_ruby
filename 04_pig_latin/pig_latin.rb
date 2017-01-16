def translate(sentence)
  vowels = [ "a", "e", "i", "o", "u"]
  two_letters_consonants = ["ch", "qu", "th", "br"]
  three_letters_consonants = ["thr", "sch", "squ"]
  sentence = sentence.split
  sentence.each do |word|
    index = sentence.index(word)
    if vowels.include?(word[0])
      sentence[index] = word + "ay" + " "
    elsif three_letters_consonants.include?(word[0..2])
      sentence[index] = word[3..-1] + word[0..2] + "ay" + " "
    elsif two_letters_consonants.include?(word[0..1])
      sentence[index] = word[2..-1] + word[0..1] + "ay" + " "
    else
      sentence[index] = word[1..-1] + word[0] + "ay" + " "
    end
  end
  sentence = sentence.join.strip
end
