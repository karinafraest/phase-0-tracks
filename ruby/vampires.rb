puts "How many employees will we process today? "
employee=gets.chomp.to_i

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
	insurance=gets.chomp.capitalize
	if insurance=="Y"
		insurance=true
	elsif insurance=="N"
		insurance=false
	else
		puts "ERROR"
	end

	age_right= age==(2017-year)


	if (age_right && (garlic && insurance) && (name=="Drake Cula" || name=="Tu Fang")) 
		puts "Definitely a vampire"
	elsif age_right && (garlic || insurance)
		puts "Probably not a vampire"
	elsif !age_right && ( !garlic && !insurance)
		puts "Almost certainly a vampire"
	elsif !age_right && ( !garlic || !insurance)
		puts "Probably a vampire"
	else
		puts "Results inconclusive"
	end

