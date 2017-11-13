require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length #This makes sure we iterate over every part of the array
    collection << yield(array[i])
    yield(array[i])
    i += 1 #This makes sure we continue to loop until the point where i = array.length
  end
  collection
end


hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
