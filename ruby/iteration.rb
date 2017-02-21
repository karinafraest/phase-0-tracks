def greetings
	puts "Status: initializing"
	yield("Tom")
	puts "Status: end"
end

greetings {|x| puts "Hello #{x}"}

movies=["Lord of the rings", "The heat", "Kill Bill", "Pursuit of happyness", "Stomp the yard","The Internship"]

database={
	lord_of_the_rings: "Elijah Wood",
	the_heat: "Melissa Mcarthy",
	kill_bill: "Uma Truman",
	pursuit_of_happyness: "Will Smith",
	stomp_the_yard: "Meagan Good",
	the_internship: "Vince Vaughn"
}

movies.each do |movie|
	puts movie
end

movies.map! do |movie|
	puts movie
	movie<< " movie"
end

p movies

p database

database.each do |movie,actor|
	puts "The protagonist for the movie #{movie} is #{actor}"
end

p database
