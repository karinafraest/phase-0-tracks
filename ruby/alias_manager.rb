=begin
	ask the spy for its name (puts/gets.chomp)
	create fake name
		swap the first and last name (split, reverse)
		change all the vowels to next and consonants to next consonant (if/.next)
=end
$consonants=["a","e","i","o","u"]

def swap name
	swap_name=name.split(" ").reverse!.join(" ")
	return swap_name
end

def consonant_change letter
	if letter.downcase=="a"
		return "e"
	elsif letter=="e"
		return "i"
	elsif letter=="i"
		return "o"
	elsif letter=="o"
		return "u"
	elsif letter=="u" || letter=="z"
		return "b"
	end
end

def vowel_change letter
	p letter
	new_letter=letter.next
	p new_letter
	if $consonants.include? new_letter.downcase
		new_letter=new_letter.next
		p new_letter
		return new_letter
	else
		p new_letter
		return new_letter
	end
end

def fake name
	swapped_name=swap(name)
	p swapped_name
	name_array=swapped_name.split("")
	name_array.map! do |letter|
		if $consonants.include? letter
			consonant_change letter
		elsif letter==" "
			" "
		else
			vowel_change letter
		end
	end
	fake_name=name_array.join("")
	return fake_name
end	
p fake "Felicia Torres"

p fake "Amanda Orozco"