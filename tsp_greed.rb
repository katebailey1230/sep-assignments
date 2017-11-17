require_relative 'city'

def distance(currentCity, city)
	Math.hypot(city.x - currentCity.x, city.y - currentCity.y)
end

def nearestNeighbor(graph_of_cities, route)
	route = [currentCity]
	until graph_of_cities[0].nil
		nextCity = graph_of_cities[0]
		graph_of_cities.each do |city|
			if distance(currentCity, nextCity) > distance(currentCity, city)
				nextCity = city
			end
		end
		currentCity = nextCity
		route.push(currentCity.name)
		graph_of_cities.delete(currentCity)
	end
	route
end
			
home = City.new("chicago", 0, 0)
city2 = City.new("boise", 1, 9)
city3 = City.new("seattle", 0, 9)
city4 = City.new("london", 22, 10)
city5 = City.new("new york", 10, 10)
city6 = City.new("budapest", 25, 8)
city7 = City.new("atlanta", 10, 0)

city_graph = [city2, city4, city3, city7, city6, city5]

trip_route = nearestNeighbor(city_graph, home)
puts trip_route
			
	