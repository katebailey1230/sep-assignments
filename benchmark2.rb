require 'benchmark'
require_relative 'binary_tree/binary_search_tree.rb'
require_relative 'binary_tree/node.rb'
require_relative 'min_binary_heapr/min_binary_heapr.rb'

bench_node = Node.new("1", 1)
bst = BinarySearchTree.new(bench_node)
mbh = MinBinaryHeapr.new(bench_node)

Benchmark.bm do |x|
  x.report("Binary Search Tree Insertion") { n=2; 10000.times do; node = Node.new("#{n}", n); n += 1; bst.insert(bench_node, node); end; }
  x.report("Min Binary Heap Insertion") { n=2; 10000.times do; node = Node.new("#{n}", n); n += 1; mbh.insert(bench_node, node); end; }
  x.report("Binary Search Tree find 5000") { bst.find(bench_node, "5000") }
  x.report("Min Binary Heap find 5000") { mbh.find(bench_node, "5000") }
  x.report("Binary Search Tree delete 5000") { bst.delete(bench_node, "5000") }
  x.report("Min Binary Heap delete 5000") { mbh.delete(bench_node, "5000") }
end
