def binary_search(collection, value)
  collection.sort!
  low = 0
  high = collection.length - 1

  while low <= high
    mid = ((low + high) / 2).round(0)
    if collection[mid] = value then
      break
    elsif collection[mid] > value
      high = mid - 1
      collection
      binary_search(collection, value)
    else collection[mid] < value
      low = mid + 1
      collection
      binary_search(collection, value)
    end
  end
      return collection[mid]
    end
