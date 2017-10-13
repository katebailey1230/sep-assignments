require 'benchmark'
require_relative 'binary_tree/binary_search_tree.rb'
require_relative 'binary_tree/node.rb'
require_relative 'min_binary_heapr/min_binary_heapr.rb'

bench_node = Node.new("one", 1)

Benchmark.bm do |x|
  mbh = MinBinaryHeapr.new
  x.report("Heap Insertion") do
    10000.times do |y|
      mbh.insert(bench_node)
    end
  end
end

Benchmark.bm do |x|
  bst = BinarySearchTree.new
  x.report("BST Insertion") do
    10000.times do |y|
      bst.insert(bench_node)
  end
end
end

Benchmark.bm do |x|
  mbh = MinBinaryHeapr.new
  x.report("Heap Deletion") do
    100.times do |y|
      mbh.delete(bench_node)
  end
end
  end#end set up a bst
Benchmark.bm do |x|
  bst = BinarySearchTree.new
  x.report("BST Deletion") do
    100.times do |y|
      bst.delete(bench_node)
  end
end
end
Benchmark.bm do |x|
  mbh = MinBinaryHeapr.new
  x.report("Heap Find") do
    100.times do |y|
      mbh.find(bench_node, "5000")
  end
end
end  # set up a bst
Benchmark.bm do |x|
  bst = BinarySearchTree.new
  x.report("BST Find") do
    100.times do |y|
      bst.find(bench_node, "5000")
  end
end
end
