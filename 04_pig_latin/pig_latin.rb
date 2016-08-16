def translate(normal_string)
  translate_words = normal_string.split(' ')
  result = []
  translate_words.each do |word| result << translate_word(word)
  end
  result.join(' ')
end

def translate_word(word)
  if word[0] == 'a' || word[0] == 'e'
    return word += 'ay'
  elsif word[word.length] == 'a'
    return word[1, word.length] + word[0] + 'ay'
  elsif word[0, 3] == 'thr' || word[0, 3] == 'sch' || word[0, 3] == 'squ'
    return word[3, word.length] + word[0, 3] + 'ay'
  elsif word[0, 2] == 'ch' || word[0, 2] == 'th' || word[0, 2] == 'qu' || word[0, 2] == 'br'
    return word[2, word.length] + word[0, 2] + 'ay'


  else
    return word[1, word.length] + word[0] + 'ay'
  end
end
