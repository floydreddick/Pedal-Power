# Pedal Power
# A Ruby Program to Track Biking Data
 
# Set up our data structure
bikes = {}
 
# Load up our biking routes
bikes[:downtown] = { length: 10, terrain: 'flat' }
bikes[:uptown] = { length: 5, terrain: 'hilly' }
 
# Ask the user for their bike speed
puts "What was your average bike speed in miles/hour today?"
speed = gets.chomp.to_f
 
# Calculate the total time it will take for each route
bikes.each do |route, data|
  time = data[:length] / speed
  data[:time] = time
end
 
# List the routes and associated data
bikes.each do |route, data|
  puts "#{route} Route:"
  puts "  Length: #{data[:length]} miles"
  puts "  Terrain: #{data[:terrain]}"
  puts "  Time: #{data[:time].round(2)} hours"
end
 
# Find the fastest route
fastest_route = nil
fastest_time = nil
 
bikes.each do |route, data|
  if fastest_time.nil? || data[:time] < fastest_time
    fastest_route = route
    fastest_time = data[:time]
  end
end
 
# Output the fastest route & time
puts "The fastest route is the #{fastest_route} route at #{fastest_time.round(2)} hours."