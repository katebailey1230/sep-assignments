require 'benchmark'
require_relative 'binary_tree/binary_search_tree.rb'
require_relative 'binary_tree/node.rb'


Benchmark.bm do |x|
  heap = AHeap.new
  x.report("Heap Insertion") do
    10000.times do |y|
      heap.insert(HeapNode.new)
    end
  end

  bst = BinarySearchTree.new
  x.report("BST Insertion") do
    10000.times do |y|
      bst.insert(BSTNode.new)
  end
end

Benchmark.bm do |x|
  heap = AHeap.new
  x.report("Heap Deletion") do
    100.times do |y|
      heap.delete(HeapNode)
  end
end
  # set up a bst

  bst = BinarySearchTree.new
  x.report("BST Deletion") do
    100.times do |y|
      bst.delete(BSTNode)
  end
end

Benchmark.bm do |x|
  heap = AHeap.new
  x.report("Heap Find") do
    100.times do |y|
      heap.find(node, "5000")
  end
end
  # set up a bst

  bst = BinarySearchTree.new
  x.report("BST Find") do
    100.times do |y|
      bst.find(node, "5000")
  end
end
