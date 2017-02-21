=begin
	ask the spy for its name (puts/gets.chomp)
	create fake name
		swap the first and last name (split, reverse)
		change all the vowels to next and consonants to next consonant (if/.next)
=end

def swap name
	swap_name=name.split(" ").reverse!.join(" ")
	return swap_name
end


def fake name
	swapped_name=swap(name)
	name_array=swapped_name.split("")
	name_array.map! do |letter|
		if letter.downcase=="a"||letter=="e"||letter=="i" || letter=="o"||letter=="u"
			if letter.downcase=="a"
				"e"
			elsif letter=="e"
				"i"
			elsif letter=="i"
				"o"
			elsif letter=="o"
				"u"
			elsif letter=="u"
				"a"
			end
		elsif letter==" "
			" "
		else
			letter.next
		end
	end
	fake_name=name_array.join("")
	return fake_name
end	
p fake "Felicia Torres"