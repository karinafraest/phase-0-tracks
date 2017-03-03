require_relative 'game.rb'

describe Game do
	let(:words){ Game.new("hello world") }
#Display the hidden word
#input: words
#steps: iterate through string. Change every letter to _, add spaces"
#output: array
	it "creates an array with hidden characters" do
		expect(words.create_hidden_word).to eq(['_','_','_','_','_',' ','_','_','_','_','_'])
	end

#Find number of guesses available
#input: words
#steps: find the amount of letters.
#output: fixnum
	it "selects number of guesses available" do
		expect(words.guesses).to eq(14)
	end

#Find remaining guesses
#input guesses
#steps substract one to guesses
#output guesses
	it "finds the number of guesses available" do
		words.guesses
		expect(words.remaining).to eq(13)
	end

#Find letter in phrase
#input string
#steps find the indexes of the string. add string in that index in hidden array
#output array
	it "finds if a letter is in the phrase and adds it if it is" do
		words.create_hidden_word
		expect(words.choose('o')).to eq((['_','_','_','_','o',' ','_','o','_','_','_']))
	end

#gives final message
#input won/lost
#steps if won the message is cheerful, if lost the message is evil
#output words
	it "gives final message" do 
		initial="hello world"
		final="hello world".split("")
		expect(words.final(initial,final)).to eq(true)
	end
end

#UI
#enter word or phrase
#enter character