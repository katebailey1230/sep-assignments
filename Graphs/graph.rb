
require_relative 'movies'
require_relative 'node'
require 'forwardable'


class Graph
  attr_accessor :film_actor_hash
  attr_accessor :movie
  attr_accessor :node

  def initialize
    @resuls = []
end

def find_kevin_bacon (node)
  node_array = []
	@result.push(kevin_bacon)
	node.film_actor_hash.each do |movie, actors|
		actors.each do |actor|
if actor.name === "Kevin Bacon"
	  node_array.push(movie)
	   puts movie
return node_array
  end
end

actors.each do |actor|
puts actor.name
if !@result.include?(actor)
  temp = find_kevin_bacon(actor)
if !temp.empty?
  node_array.push(movie)
    end
  end
end
return node_array
end


extend Forwardable
def reset(hash)
 hash.each do |movie, actors|
    actors.each do |actor|
    end
  end
end
end
end
