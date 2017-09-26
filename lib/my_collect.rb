def my_collect(array)
  counter = 0
  while counter < array.length
    yield(array[i])
    counter += 1
  end
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split('').first
end
