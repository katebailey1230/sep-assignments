require_relative 'linked_list'

class SeparateChaining
  attr_reader :max_load_factor

  def initialize(size)
    @max_load_factor = 0.7
    @nodes = Array.new(size)
    @node_count = 0.0
  end

  def []=(key, value)
   index = self.index(key, @nodes.size)
   node = Node.new(key, value)
   list = LinkedList.new
   
   if @nodes[index].nil?
    list.add_to_front(node)
    @node_count += 1
    @nodes[index] = list
   elsif @nodes.size == 5
    self.resize
    self.[]=(key,value)
   else
    @nodes[index].add_to_front(node)
    @node_count += 1
   end
  end
  

  def [](key)
   index = self.index(key, @nodes.size)
   list = @nodes[index]
   target_node = nil
   current_node = list.head
   
   if current_node != nil && current_node.key != key
    current_node = current_node.next
   end
    target_node = current_node
    target_node.value
  end
  

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
   return key.sum % size
  end

  # Calculate the current load factor
  def load_factor
   @node_count = 0.0
   
   @nodes.each do |node|
    if node != nil
    current_node = node.head
   while current_node != nil
    @node_count += 1
    current_node = current_node.next
   end
   end
   end
   @max_load_factor = (@node_count / @nodes.size)
   if @max_load_factor > 0.7
    self.resize
    self.load_factor
   else
    @max_load_factor
  end
  end

  # Simple method to return the number of items in the hash
  def size
   return @nodes.length
  end

  # Resize the hash
  def resize
    old_array = @nodes
    new_size = size * 2
    @nodes = Array.new(new_size)
    
   old_array.each do |node|
      if node != nil
        current_node = node.head
       while current_node != nil
        self.[]=(current_node.key, current_node.value)
        current_node = current_node.next
      end
    end
  end
  end
	
	def print
		 puts "The load factor is #{self.load_factor}."
		 puts "The location of #{self.value} is #{self.index(self.key, self.length)}."
end