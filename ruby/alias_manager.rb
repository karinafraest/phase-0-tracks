=begin
	ask the spy for its name (puts/gets.chomp)
	create fake name
		swap the first and last name (split, reverse)
		change all the vowels to next and consonants to next consonant (if/.next)
=end

def swap name
	name_array=name.split(" ").reverse!.join(" ")
	return name_array
end


p swap "Felicia Torres"