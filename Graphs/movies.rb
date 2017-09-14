require_relative 'graph'


  
my_graph = Graph.new()

   kevin_bacon = Node.new("Kevin Bacon") 
   john_lithgow = Node.new("John Lithgow") 
   chris_penn = Node.new("Chris Penn") 
   wesley_snipes = Node.new("Wesley Snipes") 
   stephen_dorff = Node.new("Stephen Dorff") 
   johnny_depp = Node.new("Johnny Depp") 
   sean_penn = Node.new("Sean Penn") 
   christian_bale = Node.new("Christian Bale") 
   tim_robbins = Node.new("Tim Robbins") 
   fake = Node.new("Fake") 
   patrick_swayze = Node.new("Patrick Swayze") 

  film_actor_hash = Hash.new()
    kevin_bacon.set_films(film_actor_hash)
    john_lithgow.set_films(film_actor_hash)
    chris_penn.set_films(film_actor_hash)
    wesley_snipes.set_films(film_actor_hash)
    stephen_dorff.set_films(film_actor_hash)
    johnny_depp.set_films(film_actor_hash)
    sean_penn.set_films(film_actor_hash)
    christian_bale.set_films(film_actor_hash)
    tim_robbins.set_films(film_actor_hash)
    patrick_swayze.set_films(film_actor_hash)
    fake.set_films(film_actor_hash)
  
  
    
    film_actor_hash["Footloose"] = [kevin_bacon, john_lithgow, chris_penn]
    film_actor_hash["To Wong Foo, Thanks for Everything Julie Newmar"] = [patrick_swayze, wesley_snipes, chris_penn]
    film_actor_hash["Blade"] = [stephen_dorff, wesley_snipes]
    film_actor_hash["Public Enemies"] = [johnny_depp, christian_bale, stephen_dorff]
    film_actor_hash["Before Night Falls"] = [sean_penn, johnny_depp]
    film_actor_hash["Mystic River"] = [tim_robbins, kevin_bacon, sean_penn]
    
    
   
 result = my_graph.find_kevin_bacon(wesley_snipes)
puts result
