require_relative 'node'

class Graph

  def find_kevin_bacon(start)
    result = []
    found = false
    result.push(start)
    until result.empty?
      node = result.shift
      node.film_actor_hash.each do |movie, actors|
      end
      actors.each do |actor|
        if actor.name != 'Kevin Bacon' && !result.include?(actor)
          result.push(actor)
        end
        if actor.name == 'Kevin Bacon'
          found = true
          return start.node_array
        end
      end
    end
  end
end
