
puts "How many employees will we process today? "
employee=gets.chomp.to_i #number of employees being processed

while employee>0
	puts "What is your name? "
	name=gets.chomp

	puts "How old are you? "
	age=gets.chomp.to_i

	puts "What year were you born? "
	year=gets.chomp.to_i

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
	garlic=gets.chomp.upcase
	if garlic=="Y"
		garlic=true
	elsif garlic=="N"
		garlic=false
	else
		puts "ERROR"
	end

	puts "Would you like to enroll in the company's health insurance? (Y/N)"
	insurance=gets.chomp.upcase
	if insurance=="Y"
		insurance=true
	elsif insurance=="N"
		insurance=false
	else
		puts "ERROR"
	end
	#Allergy loop
	stop=false
	allergy=false

	until stop
		puts "Name one allergy you have or type done"
		answer=gets.chomp
		if answer=="done"
			stop=true
		elsif answer =="sunshine"
			allergy=true
			stop=true
		end
	end

	#check for correct age
	age_right= age==(2017-year)

	#Conditional statements
	if (age_right && (garlic && insurance) && (name=="Drake Cula" || name=="Tu Fang")) 
		puts "Definitely a vampire"
	elsif age_right && (garlic || insurance)
		puts "Probably not a vampire"
	elsif !age_right && ( !garlic && !insurance)
		puts "Almost certainly a vampire"
	elsif allergy || (!age_right && ( !garlic || !insurance))
		puts "Probably a vampire"
	else
		puts "Results inconclusive"
	end
	employee-=1 #employees processed counter
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends"
