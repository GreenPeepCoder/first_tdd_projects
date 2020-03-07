require '00_Array'

describe "my_uniq" do
    let(:array) { [1, 3, 4, 1, 3, 7]}
    let(:uniqued_array) { my_uniq(array.dup)}

    it "removes duplicates" do
        array.each do |item|
            expect(uniqued_array.count(item)).to eq(1)
        end
    end

    it "only contains items from the original array" do
        uniqued_array.each do |ele|
            expect(array).to include(ele) 
        end
    end

    it "does not modify original array" do
        expect {
            my_uniq(array)
        }.to_not change{array}
    end
end

describe '#two_sum' do
    let(:array) { [-5, -3, 1, 3]}
    let(:one_zero) { [3, 0, 4]}
    let(:two_zero) { [3, 0, 4, 0]}

    it "finds a zero-sum pair"

    it "is not confused by a single zero"

    it "handles two zeros"
end

describe '#my_transpose' do
    it "transposes a matrix"
end

describe '#stock_picker' do
    it "finds a simple pair"

    it "finds a better pair after an inferior pair"

    it "does not buy stocks in a crash"
end


