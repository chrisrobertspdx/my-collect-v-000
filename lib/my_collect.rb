def my_collect(arr)
  if block_given?
    collection = []
    i=0
    while i < arr.size
      collection << yield arr[i]
      i += 1
  else
    return Nil
  end
end

