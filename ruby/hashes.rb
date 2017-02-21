=begin
Allow an interior designer to enter the details of a given client: the client's name, age, 
number of children, decor theme, and so on \.
(you can choose your own as long as it's a good mix of string, integer, and boolean data).

Your program should ...

Prompt the designer/user for all of this information.
Convert any user input to the appropriate data type.
Print the hash back out to the screen when the designer has answered all of the questions.
Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
Print the latest version of the hash, and exit the program.

	Ask the designer for information -method that returns answer
	Create a database with the answers -method that creates and populates the database
	Make edition possible -method that access the database and modifies items
	Check proper type
	User interfase that allows her to Create, Edit or Exit the program.	

=end

#GLOBAL VARIABLES
database={}

def ask question
	puts question
	answer=gets.chomp
	if answer=="yes"
		return true
	elsif answer=="no"
		return false
	elsif answer==""
		puts "Sorry, I did not catch that"
		ask question
	else
		return answer
	end
end


#METHOD FOR CREATING A DATABASE
def create database
	puts"Let's start creating a new profile."
	database[:name]=ask "Client's name"
	database[:last]=ask "Client's last name"
	database[:age]= (ask "What is your age").to_i
	database[:child]=(ask "How many children do you have?").to_i
	database[:pets]=(ask "How many pets do you have?").to_i
	database[:theme]=ask "Would you like a trendy, techno, or retro theme?"
	database[:decor]=ask "Are you willing to pay for extra for decorations? (yes/no)"
	return database
end

#METHOD FOR EDITING ANY NUMBER
def edit database, modify
	puts "Insert new value for #{modify}"
	change=gets.chomp
	database[modify.to_sym]=change
	return database
end

#prints database very pretty
def pretty database
	puts "-----PROFILE-----".center(20)
	database.each do |key,value|
		puts "#{key}:".ljust(10) + " #{value}".rjust(10)
	end
end

puts "Welcome to the designer's interfase."
quit=false
until quit

puts "Would you like to CREATE a profile, EDIT, or QUIT"
action=gets.chomp
	if action.upcase=="CREATE"
		pretty (create database)
	elsif action.upcase=="EDIT"
		puts "What would you like to edit?"
		puts database.keys
		modify=gets.chomp
		pretty (edit(database,modify))
	elsif action.upcase=="QUIT"
		quit=true
	else
		puts "That is not valid"
	end
end