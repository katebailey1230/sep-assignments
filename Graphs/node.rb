class Node
  attr_accessor :name
  attr_accessor :film_actor_hash
  attr_accessor :visit

def initialize(name)
  @name = name
  @film_actor_hash = Hash.new()
  @visit = false
end
end


