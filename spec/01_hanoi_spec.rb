require '01_hanoi'

describe TowersOfHanoiGame do
    subject(:towers) { TowersOfHanoiGame.new }

    describe "#render" do 
        it "prints the stacks" do
            expect(towers.render).to eq("Tower 0: 3 2 1\nTower 1: \nTower 2: \n")
        end

        it "prints shorter stacks"
    end 

    describe "move" do
        it "allows moving to a blank space" do
            expect { towers.move(0,1)}.not_to raise_error
        end
        
        it "allows moving onto a larger disc" do
            towers.move(0,2)
            towers.move(0,1)
            expect { towers.move(2,1)}.not_to raise_error
        end
        
        it "does not allow moving from an empty stack" do
            expect { towers.move(1,2)}
            .to raise_error("cannot move from empty stack")
        end
        
        it "does not allow moving onto a smaller disc" do 
            towers.move(0,1)
            expect { towers.move(0, 1)}
            .to raise_error("cannot move onto smaller disc")
        end
    end

    describe "#won?" do
        it "is not won at the start" do
            expect(towers).not_to be_won
        end

        it "is won when all disks are moved to tower 1"

        it "is won when all disks are moved to tower 2"
    end
end