require_relative 'genie'

describe Genie do 
	let(:genie) { Genie.new("Bob", 20) }

	it "states the name of the genie" do
		expect(genie.about).to eq "His name is Bob."
	end

	it "states false if genie enters the lamp" do 
		expect(genie.enter_lamp).to eq false
	end 

	it "states true if genie exits the lamp" do
		expect(genie.exit_lamp).to eq true
	end
end 	 