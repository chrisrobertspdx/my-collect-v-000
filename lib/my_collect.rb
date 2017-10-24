def my_collect(arr)
  if block_given?
    collection = []
    i=0
    while i < arr.size do
      collection << yield(arr[i])
      i += 1
    end
    collection
  else
    NIL
  end
end
array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
puts my_collect(array) do |name|
  name.split(" ").first.inspect
end
