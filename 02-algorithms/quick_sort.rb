require 'benchmark'

class QuickSort


  def quick_sort(array)
    sortSub(array, 0, array.length - 1)
  end

  private

  def sortSub(array, low_index, high_index)
    if (high_index <= low_index)
      return
    end
    partition_index = worker(array, low_index, high_index)
    sortSub(array, low_index, partition_index - 1)
    sortSub(array, partition_index+1, high_index)
  end


  def worker(array, low_index, high_index)
    pivot = array[low_index]
    lowest_opened = low_index + 1
    last_closed = NIL
    (low_index+1..high_index).each do |index|
      revealed = array[index]
      if revealed < pivot
        array.insert(lowest_opened, array.delete_at(index))
        last_closed = lowest_opened
        lowest_opened = lowest_opened + 1
      end
    end
    if !last_closed.nil?
      array.insert(last_closed, array.delete_at(low_index))
      low_index = last_closed
    end
    return low_index
  end
end

q = QuickSort.new
arr1 = [25, 14, 6, 231, 56, 25, 26]
arr2 = [13, 4, 2, 13]
arr3 = [13, 13, 9]
arr4 = [15, 12, 12]
arr5 = [13, 13, 12, 12]
arr6 = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3]
q.quick_sort(arr1)
print arr1
puts ""
q.quick_sort(arr2)
print arr2
puts ""
q.quick_sort(arr3)
print arr3
puts ""
q.quick_sort(arr4)
print arr4
puts ""
q.quick_sort(arr5)
print arr5
puts ""
q.quick_sort(arr6)
print arr6
puts ""

puts Benchmark.measure{q.quick_sort(arr6)}
#0.000000   0.000000   0.000000 (  0.000013)
