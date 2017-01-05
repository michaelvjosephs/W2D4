require 'rspec'
require 'execution_time_differences'

describe "#my_min" do
  let(:test_array) { [3, 5, -4, 7, 10, 2] }

  it "returns the smallest element" do
    expect(my_min(test_array)).to eq(-4)
  end

  it "returns nothing if passed an empty array" do
    expect(my_min([])).to be_nil
  end
end

describe "#largest_contiguous_subsum" do
  let(:test_array_1) { [5, 3, -7] }
  let(:test_array_2) { [2, 3, -6, 7, -6, 7] }
  let(:test_array_3) { [-5, -1, -3] }

  it "returns the largest subsum" do
    expect(largest_contiguous_subsum(test_array_1)).to eq(8)
    expect(largest_contiguous_subsum(test_array_2)).to eq(8)
    expect(largest_contiguous_subsum(test_array_3)).to eq(-1)
  end

  it "returns nil if passed an empty array" do
    expect(largest_contiguous_subsum([])).to be_nil
  end
end
