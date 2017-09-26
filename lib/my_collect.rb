def my_collect(array)
  counter = 0
  new_array = []
  while counter < array.length
    new_array.push(yield(array[counter]))
    counter += 1
  end
  new_array
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
collection = ['ruby', 'javascript', 'python', 'objective-c']

my_collect(array) do |name|
  name.split('').first
end

my_collect(collection) do |language|
  language.upcase
end
