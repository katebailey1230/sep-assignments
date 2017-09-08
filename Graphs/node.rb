class Node
  attr_accessor :name
  attr_accessor :film_actor_hash
  attr_accessor :node_array
end

 def initialize(name)
    @name = name
    @node_array = []
  end

def set_films(films)
  @film_actor_hash = {}
  films.each do |key, value|
    value.each do |node|
      if node.name == name
        @film_actor_hash[key] = value
        @film_actor_hash[key] -= [node]
      end
    end
  end
end
