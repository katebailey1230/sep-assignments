require_relative 'graph'
require_relative 'node'

graph = Graph.new

kevin_bacon = Node.new('Kevin Bacon')
john_lithgow = Node.new('John Lithgow')
chris_penn = Node.new('Chris Penn')
wesley_snipes = Node.new('Wesley Snipes')
stephen_dorff = Node.new('Stephen Dorff')
johnny_depp = Node.new('Johnny Depp')
sean_penn = Node.new('Sean Penn')
christian_bale = Node.new('Christian Bale')
tim_robbins = Node.new('Tim Robbins')
fake = Node.new('Fake')
patrick_swayze = Node.new('Patrick Swayze')

film_hash = {}
kevin_bacon.set_films(film_hash)
john_lithgow.set_films(film_hash)
chris_penn.set_films(film_hash)
wesley_snipes.set_films(film_hash)
stephen_dorff.set_films(film_hash)
johnny_depp.set_films(film_hash)
sean_penn.set_films(film_hash)
christian_bale.set_films(film_hash)
tim_robbins.set_films(film_hash)
patrick_swayze.set_films(film_hash)
fake.set_films(film_hash)

film_hash['Footloose'] = [kevin_bacon, john_lithgow, chris_penn]
film_hash['To Wong Foo, Thanks for Everything Julie Newmar'] = [patrick_swayze, wesley_snipes, chris_penn]
film_hash['Blade'] = [stephen_dorff, wesley_snipes]
film_hash['Public Enemies'] = [johnny_depp, christian_bale, stephen_dorff]
film_hash['Before Night Falls'] = [sean_penn, johnny_depp]
film_hash['Mystic River'] = [tim_robbins, kevin_bacon, sean_penn]

puts graph.find_kevin_bacon(tim_robbins).to_s
graph.reset(film_hash)
puts graph.find_kevin_bacon(johnny_depp).to_s
