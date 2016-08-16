def echo(echo_string)
  echo_string
end

def shout(shout_string)
  shout_string.upcase
end

def repeat(word, repeat_times = 2)
  repeat_word = ""
  repeat_times.times do repeat_word += word
    repeat_word += ' '
  end
  return repeat_word.strip

end

def start_of_word(word, characters)
  word[0, characters]
end

def first_word(first_word)
  first_word.partition(" ").first
end

def titleize(make_title)
  non_title_words = ['over',  'the',  'and']
  title_words = make_title.split(" ")
  first_word = 0
  result = []
  title_words.each do |word|
    if first_word == 0
      result << word.capitalize
      first_word += 1
    else
      if !non_title_words.include? word
        result << word.capitalize
      else
        result << word
      end
    end

  end
  result.join(" ")

  ##make_title.capitalize
end
