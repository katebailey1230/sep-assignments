
require_relative 'movies'
require_relative 'node'
require 'forwardable'


class Graph
  attr_accessor :film_actor_hash
  attr_accessor :movie
  attr_accessor :node

  def initialize
end

def find_kevin_bacon(start)
    node_array = []
    node_array.push(start)
    while(node_array.size != 0)
      node = node_array.shift
    node.film_actor_hash.each do |movie, actors|
      if !start.path.include?(movie)
        start.path.push(movie)
      end
      actors.each do |actor|
        if actor.name != "Kevin Bacon" && !node_array.include?(actor)
          node_array.push(actor)
        end
        if actor.name === "Kevin Bacon"
          return start.path
        end
      end
    end
  end
end


extend Forwardable
def reset(hash)
 hash.each do |movie, actors|
    actors.each do |actor|
    end
  end
end
end
