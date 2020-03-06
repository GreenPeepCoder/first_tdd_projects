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
    end

    it "does not modify original array" do
    end
end

describe '#two_sum' do
end

describe '#my_transpose' do
end

describe '#stock_picker' do
end


