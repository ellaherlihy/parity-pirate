require 'parity_pirate'

RSpec.describe "Array#split_by_parity" do
  let(:array) { [1, 2, 3, 4, 5] }

  it "splits arrays by parity" do
    expect(array.split_by_parity).to eq([[2, 4], [1, 3, 5]])
  end

  it "is the same as partition(&:even?)" do
    expect(array.split_by_parity).to eq(array.partition(&:even?))
  end

  it "sets variable names for created arrays" do
    even, odd = array.split_by_parity
    expect(even).to eq([2, 4])
    expect(odd).to eq([1, 3, 5])
  end
end

# Hello
