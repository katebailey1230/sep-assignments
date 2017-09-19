require 'forwardable'
class Node
  attr_accessor :name
  attr_accessor :film_actor_hash
  attr_accessor :path
  

def initialize(name)
  @name = name
  @path = []
end
  
  def set_films(movie)
    @film_actor_hash = Hash.new
    movie.each do |key, value|
      value.each do |node|
        if node.name == name
          @film_actor_hash[key] = value
          @film_actor_hash[key] -= [node]
        end
      end
    end
end
end

