=begin
	ask the spy for its name (puts/gets.chomp)
	create fake name
		swap the first and last name (split, reverse)
		change all the vowels to next and consonants to next consonant (if/.next)
=end
$consonants=["a","e","i","o","u","A","E","I","O","U"]

def swap name
	swap_name=name.split(" ").reverse!.join(" ")
	return swap_name
end

def consonant_change letter
	new_letter= letter.next
	until $consonants.include? new_letter
		new_letter=new_letter.next
	end
	return new_letter
end

def vowel_change letter
	letter=="z" ? (new_letter="a"):	new_letter=letter.next
	if $consonants.include? new_letter
		new_letter=new_letter.next
		return new_letter
	else
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