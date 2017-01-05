require 'rspec'
require 'two_sum'

describe "bad_two_sum?" do
  let(:array) { [5, 2, 3, 1] }

  it "returns true if a pair sums to target" do
    expect(bad_two_sum?(array, 7)).to be true
  end

  it "returns false if no pair sums to target" do
    expect(bad_two_sum?(array, 9)).to be false
  end

  it "doesn't use the same number twice in the sum" do
    expect(bad_two_sum?(array, 10)).to be false
  end
end

describe "okay_two_sum?" do
  let(:array) { [5, 2, 3, 1] }

  it "returns true if a pair sums to target" do
    expect(okay_two_sum?(array, 7)).to be true
  end

  it "returns false if no pair sums to target" do
    expect(okay_two_sum?(array, 9)).to be false
  end

  it "doesn't use the same number twice in the sum" do
    expect(okay_two_sum?(array, 10)).to be false
  end
end

describe "good_two_sum?" do
  let(:array) { [5, 2, 3, 1] }

  it "returns true if a pair sums to target" do
    expect(good_two_sum?(array, 7)).to be true
  end

  it "returns false if no pair sums to target" do
    expect(good_two_sum?(array, 9)).to be false
  end

  it "doesn't use the same number twice in the sum" do
    expect(good_two_sum?(array, 10)).to be false
  end
end
