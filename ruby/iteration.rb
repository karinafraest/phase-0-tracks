#----------------------------------RELEASE 1----------------------------------------
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
#-------------------------------------RELEASE 2---------------------------------
numbers =[5,3,9,7,10,16,3]

grades={
	exam: 90,
	homework1: 100,
	homework2: 90,
	homework3: 80,
	homework4: 95,
	peer1: 100,
	peer2: 85,
	peer3: 85

}

p numbers 
#1
#numbers.delete_if{|x| x<5}
numbers.drop_while{|x| x<5}
#FILTER ARRAY
new_array=numbers.take_while{|x| x<10}
p new_array

p grades
#HASHES
#1
#grades.delete_if{|key, grade| grade<90}
#2
#grades.reject!{|key,grade| grade<90}
#3
#grades.keep_if{|key,grade| grade>90}
#grades.select!{|key,grade| grade>90}

p grades

