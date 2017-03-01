require_relative 'game.rb'

describe Game do
	let(:words){ Game.new("hello world") }

	it "selects number of guesses available" do
		expect(words.guesses).to eq(22)
	end

	it "finds the number of guesses available" do
		expect(words.remaining).to eq(21)
	end

	it "shows the display for hidden word" do
		expect(words.show).to eq("_ _ _ _ _ / _ _ _ _ _")
	end

	it "finds if a letter is in the phrase and adds it if it is" do
		words.find("o")
		expect(words.find).to eq("_ _ _ _ o / _ o _ _ _")
	end

	it "gives final message" do 
		expect(words.final).to eq("You won!!")
	end

end

#Find number of guesses available
#Display the hidden word
#Finds if a letter is in the phrase
#updates the number of guesses
#gives final message

#UI
#enter word or phrase
#enter character