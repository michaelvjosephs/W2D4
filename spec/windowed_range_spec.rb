require 'rspec'
require 'windowed_range'

describe "max_windowed_range" do
  let(:array) { [1, 2, 3, 5] }

  it "finds the max windowed range" do
    expect(max_windowed_range(array, 3)).to eq(3)
  end

end

describe "max_windowed_range_fast" do
  let(:array) { [1, 2, 3, 5] }
  let(:bigger_array) { [1, 2, 3, 3, 5, 7, 3, 1, 4, 10]}

  it "finds the max windowed range" do
    expect(max_windowed_range_fast(array, 3)).to eq(3)
  end

  it "finds the max windowed range two" do
    expect(max_windowed_range_fast(bigger_array, 3)).to eq(9)
  end



end
