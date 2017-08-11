require_relative 'linked_list'

class SeparateChaining
  attr_reader :max_load_factor

  def initialize(size)
    @max_load_factor = 0.7
    @array = Array.new(size)
  end

  def []=(key, value)
  end

  def [](key)
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
   return key.sum % size
  end

  # Calculate the current load factor
  def load_factor
  end

  # Simple method to return the number of items in the hash
  def size
   return @array.length
  end

  # Resize the hash
  def resize
   new_size = size * 2
    expanded_hash = Array.new(new_size)
    @array.each do |item|
      if item != nil
        expanded_hash[index(item.key, new_size)] = item
      end
    end
    @array = expanded_hash
  end
end
  