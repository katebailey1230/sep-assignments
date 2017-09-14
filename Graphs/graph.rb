require_relative 'node'



class Graph
  attr_accessor :film_actor_hash
  
  def initialize
    @result = Array.new
  end

  def set_films(movie)
    @film_actor_hash = Hash.new
    movie.each do |key, value|
      value.each do |node|
        if node.name == name
          @film_actor_hash[key] = value
          @film_actor_hash[key] -=node
        end
      end
    end
 
  def find_kevin_bacon(node)
    node_array = []
    @result.push(node)
    node.film_actor_hash.each do |movie, actors|
      actors.each do |actor|
        if actor.name === "Kevin Bacon"
          node_array.push(movie)
          return node_array
        end
      end
      actors.each do |actor|
        if !@result.include?(actor)
          temp = find_kevin_bacon(actor)
            if !temp.empty?
          node_array.push(movie)
          node_array += temp
            end
        end
      end
    end
    return node_array
    
   

def reset(node)
  if node != nil
    @result.clear
    end
  end
end
end
end
