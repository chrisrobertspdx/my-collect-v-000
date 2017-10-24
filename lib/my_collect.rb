def my_collect(arr)
  puts block_given?
  if block_given?
    collection = []
    i=0
    while i < arr.size do
      collection << yield(arr[i])
      i += 1
    end
    #puts collection.inspect
    collection
  else
    puts "Nil"
    NIL
  end
end
array = ["Tim Jones", "Tom Smith", "Jim Campagno"]

puts my_collect(array) {|name| name.split(" ").first}.inspect

