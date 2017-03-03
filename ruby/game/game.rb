
class Game
	def initialize(words)
		@words=words.split("")
		@char="_"
		@hidden_word=""
		@guesses=0
		@been_selected=[]	
	end

#Find number of guesses available
#input: words
#steps: find the amount of letters.
#output: number of guesses
	def guesses
		if @guesses==0
			size=@words.length
			if size>15
				@guesses=15
			else
				@guesses=size+(size/3)
			end
		end
		@guesses
	end

#Find remaining guesses
#input guesses
#steps substract one to guesses
#output guesses
	def remaining
		@guesses=@guesses-1
		@guesses
	end

#Create the hidden word
#input: character
#steps: iterate through string. Change every letter to _,
#output: array hidden word
	def create_hidden_word
		@hidden_word=@words
		encoded=[]
		@hidden_word.each do |letter|
			if letter==" "
				encoded<<" "
			else
				encoded<<@char
			end
		end
		@hidden_word=encoded
		@hidden_word
	end

#Display the hidden word
#input: word
#steps: iterate through array, change spaces to /, convert to string
#output: hidden word as string
	def show 
		encoded=[]
		i=0
		@hidden_word.each do |letter|
			if letter==" "
				encoded<<"/"
			else
				encoded<<letter
			end
			if i<@hidden_word.length-1
				encoded<<" "
			end
			i+=1
		end
		encoded=encoded.join("")
		puts "#{encoded}"
		@hidden_word
	end

#Find letter in phrase
#input string
#steps find the indexes of the string. add string in that index in hidden array
#output array
	def choose(selected)
		indexes=@words.map.with_index{ |letter,index| index if letter==selected}
		indexes=indexes.compact!
		indexes.each do |index|
			@hidden_word[index] = selected
		end
		@hidden_word
	end

#gives final message
#input initial word, final array
#steps check if the word is equal to the final word
#output true/false
	def final(initial_word,final_array)
		if final_array.instance_of?(String)
			final_word=final_array
		else
			final_word=final_array.join("")
		end
		if initial_word==final_word
			won=true
		end
		won
	end

#check character
#input character
#steps check if the letter is actually a letter. then checks if that letter has been selected before
#output true/false
	def check(letter=@char)
		@char=letter
		alphabet="abcdefjhijklmnopqrstuvwxyz".split("")
		alphabet
		if alphabet.include?(@char) && !@been_selected.include?(@char)
			@been_selected<<@char
			checked=true
		elsif @been_selected.include?(@char)
			checked=false
		end
		checked
	end
end #class

#UI
puts "Welcome to HANGMAN".center(30)
stop=false
until stop
	done=false
	puts "PLAYER1: Insert a word or phrase without special characters :)"
	selected_phrase=gets.chomp
	20.times{|x| puts " "}
	puts "Let's begin!"

	this_game=Game.new(selected_phrase)
	coded_phrase=this_game.create_hidden_word
	this_game.show
	guesses=this_game.guesses
	remaining=guesses
	puts "You have #{guesses} guesses"

		until done
		puts "PLAYER2: Select a letter or take a guess at the word/phrase"
		letter=gets.chomp
		if letter.length>1
		 	done=this_game.final(selected_phrase,letter)
		 	if done
		  		puts "WHAT? that is insane, you got it right!"
		  	else
		  		puts "Noup, that is wrong!"
		  		this_game.remaining
		  	end
		 else
			selected=this_game.choose(letter)
			this_game.show

			if remaining==0
				done=true
				puts "You are out of turns! Sorry mate."
			else
				done=this_game.final(selected_phrase,coded_phrase)
				if done
					puts "You are an amazing human being. You just won!!"
				end
			end

			valid_choice=this_game.check(letter)

			if valid_choice
				remaining=this_game.remaining
				if remaining>0 && !done
					puts "You have #{remaining} chances remaining."
				end
			end
		end

	end

	puts "Would you like to play again (Y/N)?"
	finish=gets.chomp.upcase
	if finish.upcase=="N" 
		stop=true
		p stop
	end
end

