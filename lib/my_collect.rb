def my_collect(array)
  i = 0
  new_collection = []
  
  while i < array.length
    new_collection << yield array[i]
    i++
  end
  
  return new_collection
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]

my_collect(array) do |name|
  return name.split(" ").first
end
