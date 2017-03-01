require_relative 'game.rb'

describe Game do
	let(:words){ Game.new("hello world") }

	it "selects number of guesses available" do
		expect(words.guesses).to eq(22)
	end

	it "shows the display for hidden word" do
		expect(words.show).to eq("_ _ _ _ _ / _ _ _ _ _")
	end


end