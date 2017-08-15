require_relative 'linked_list'

class SeparateChaining
  attr_reader :max_load_factor

  def initialize(size)
    @max_load_factor = 0.7
    @nodes = Array.new(size)
    @node_count = 0.0
  end

  def []=(key, value)
   # inserting a new node => increase a "count"
   # updating a node
   index = self.index(key, @nodes.size)
   
   if @nodes[index].nil?
      @nodes[index] = Node.new(key, value)
      @node_count += 1
   elsif @nodes[index].key === key
      if @nodes[index].value != value
         @nodes[index].value = value
  end
   end
  end

  def [](key)
   index = self.index(key, @nodes.size)
   current_index = index
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
   return key.sum % size
  end

  # Calculate the current load factor
  def load_factor
   return @node_count/@nodes.length
  end

  # Simple method to return the number of items in the hash
  def size
   return @nodes.length
  end

  # Resize the hash
  def resize
   new_size = size * 2
    expanded_hash = Array.new(new_size)
    @nodes.each do |node|
      if node != nil
        expanded_hash[index(node.key, new_size)] = node
      end
    end
    @nodes = expanded_hash
  end
end