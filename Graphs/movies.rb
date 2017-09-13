require_relative 'graph'

 
  film_graph = Graph.new()

  
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
  
  
    kevin_bacon.film_actor_hash["Footloose"] = [kevin_bacon, john_lithgow, chris_penn]
    chris_penn.film_actor_hash["Footloose"] = [kevin_bacon, john_lithgow, chris_penn]
    john_lithgow.film_actor_hash["Footloose"] = [kevin_bacon, john_lithgow, chris_penn]
    wesley_snipes.film_actor_hash["To Wong Foo, Thanks for Everything Julie Newmar"] = [wesley_snipes,  patrick_swayze, chris_penn]
    patrick_swayze.film_actor_hash["To Wong Foo, Thanks for Everything Julie Newmar"] = [wesley_snipes,            patrick_swayze, chris_penn]
    chris_penn.film_actor_hash["To Wong Foo, Thanks for Everything Julie Newmar"] = [wesley_snipes,  patrick_swayze, chris_penn]
    wesley_snipes.film_actor_hash["Blade"] = [wesley_snipes, stephen_dorff]
    stephen_dorff.film_actor_hash["Blade"] = [wesley_snipes, stephen_dorff]
    stephen_dorff.film_actor_hash["Public Enemies"] = [johnny_depp, stephen_dorff, christian_bale]
johnny_depp.film_actor_hash["Public Enemies"] = [johnny_depp, stephen_dorff, christian_bale]
christian_bale.film_actor_hash["Public Enemies"] = [johnny_depp, stephen_dorff, christian_bale]
    johnny_depp.film_actor_hash["Before Night Falls"] = [johnny_depp, sean_penn]
sean_penn.film_actor_hash["Before Night Falls"] = [johnny_depp, sean_penn]
    sean_penn.film_actor_hash["Mystic River"] = [sean_penn, tim_robbins, kevin_bacon]
tim_robbins.film_actor_hash["Mystic River"] = [sean_penn, tim_robbins, kevin_bacon]
kevin_bacon.film_actor_hash["Mystic River"] = [sean_penn, tim_robbins, kevin_bacon]
    
   
  result = film_graph.find_kevin_bacon(chris_penn)
puts result