require '01_hanoi'

describe TowersOfHanoiGame do
    subject(:towers) { TowersOfHanoiGame.new }

    describe "#render" do 
        it "prints the stacks" do
            expect(towers.render).to eq("Tower 0: 3 2 1\nTower 1: \nTower 2: \n")
        end

        it "prints shorter stacks"
    end 

    describe "move"

    describe "#won?"
end