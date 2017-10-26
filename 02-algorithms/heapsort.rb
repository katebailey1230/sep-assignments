require 'benchmark'

class Heap

def initialize(array)
  @array = Array.new()
end

def insert(node, index)
  @array[index] = node
end

def parent(index)
  return ((index - 2) / 2).floor
end

def l_child(index)
  return 2 * index
end

def r_child(index)
  return 2 * index + 1
end

def swap(i, j)
  @array[i], @array[j] = @array[j], @array[i]
end

def print
  @array.each do |item|
    puts item
  end
end

def heapify(count)
  start = parent(count - 1)

  while start >= 0
    sift_down(start, count - 1)
    start = start - 1
  end
end

def sift_down(start, last)
  root = start

  if @array[root] == nil
    return nil
  end

  while l_child(root) != nil && l_child(root) <= last
    child = l_child(root)
    puts "child index: #{child}"

    if (child + 1) <= last && @array[child] < @array[child + 1]
      child = child + 1
    end

    if @array[root] < @array[child]
      swap(root, child)
    else
      return
    end
    root = child
  end
end

def swap(index1, index2)
    @array[index1], @array[index2] = @array[index2], @array[index1]
  end

def heapsort(count)
   heapify(count)
   last = count - 1

  while last > 0
    swap(last, 0)
    last = last - 1
    sift_down(0, last)
  end
end
end


new_heap = Heap.new(0)
new_heap.insert(3, 12)
new_heap.insert(7, 55)
new_heap.insert(15, 89)
new_heap.insert(5, 40)
new_heap.insert(10, 30)
new_heap.heapsort(5)
new_heap.print

puts Benchmark.measure{new_heap.heapsort(7)}
0.000000   0.000000   0.000000 (  0.000012)
