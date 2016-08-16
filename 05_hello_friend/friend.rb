class Friend
  def greet(friend = ' ')
    greeting = "Hello #{friend}!"
    return greeting.split.join(' ')
  end
end
