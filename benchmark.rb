require 'benchmark'
require_relative 'node'
require_relative 'linked_list'

n = 10000
array = []
l_list = LinkedList.new

Benchmark.bm(10) do |x|
 x.report("create array") do
  for i in 1..n do
   array[i] = i
  end
 end
 x.report("append to list") do
  for i in 1..n do
   node = Node.new(i)
   l_list.add_to_tail(node)
  end
 end
end

Benchmark.bm(10) do |x|
 x.report("find in array") do
  target = array[5000]
 end
 x.report("find in l_list") do
  target = l_list.tail
 end
end

Benchmark.bm(10) do |pop|
 pop.report("pop array") do
  array.pop
 end
 pop.report("l_list pop") do
  l_list.remove_tail
 end
end

Benchmark.bm(10) do |shift|
 shift.report("array shift") do
  array.shift
 end
 shift.report("l_list shift") do
  l_list.remove_front
 end
end