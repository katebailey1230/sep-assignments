def binary_search(collection, value)
  collection.sort!
  low = 0
  high = collection.length - 1

  while low <= high
    mid = ((low + high) / 2).round(0)
    if collection[mid] > value
      high = mid - 1
    elsif collection[mid] < value
      low = mid + 1
    else collection[mid] = value
      return collection[mid]
    end
end
end
