require 'rspec'
require 'anagrams'

describe "anagrams" do
  let(:small_anagram_pair) { ["elvis", "lives"] }
  let(:non_anagram_pair) { ["gizmo", "sally"] }
  let(:big_anagram_pair) { ["presbyterians", "britneyspears"] }
  let(:other_non_pair) { ["hello", "hole"] }

  describe "#first_anagram?" do
    it "should return true for an anagram" do
      f_word, s_word = small_anagram_pair
      expect(first_anagram?(f_word, s_word)).to be true
    end

    it "should return false for a non anagram" do
      f_word, s_word = non_anagram_pair
      expect(first_anagram?(f_word, s_word)).to be false
    end
  end

  describe "#second_anagram?" do
    it "should return true for an anagram" do
      f_word, s_word = small_anagram_pair
      expect(second_anagram?(f_word, s_word)).to be true
    end

    it "should return true for a bigger anagram" do
      f_word, s_word = big_anagram_pair
      expect(second_anagram?(f_word, s_word)).to be true
    end

    it "should return false for a non anagram" do
      f_word, s_word = non_anagram_pair
      expect(second_anagram?(f_word, s_word)).to be false
    end

    it "should return false if chars are the same but counts are different" do
      f_word, s_word = other_non_pair
      expect(second_anagram?(f_word, s_word)).to be false
    end
  end

  describe "#third_anagram?" do
    it "should return true for an anagram" do
      f_word, s_word = small_anagram_pair
      expect(third_anagram?(f_word, s_word)).to be true
    end

    it "should return true for a bigger anagram" do
      f_word, s_word = big_anagram_pair
      expect(third_anagram?(f_word, s_word)).to be true
    end

    it "should return false for a non anagram" do
      f_word, s_word = non_anagram_pair
      expect(third_anagram?(f_word, s_word)).to be false
    end

    it "should return false if chars are the same but counts are different" do
      f_word, s_word = other_non_pair
      expect(third_anagram?(f_word, s_word)).to be false
    end
  end

  describe "#fourth_anagram?" do
    it "should return true for an anagram" do
      f_word, s_word = small_anagram_pair
      expect(fourth_anagram?(f_word, s_word)).to be true
    end

    it "should return true for a bigger anagram" do
      f_word, s_word = big_anagram_pair
      expect(fourth_anagram?(f_word, s_word)).to be true
    end

    it "should return false for a non anagram" do
      f_word, s_word = non_anagram_pair
      expect(fourth_anagram?(f_word, s_word)).to be false
    end

    it "should return false if chars are the same but counts are different" do
      f_word, s_word = other_non_pair
      expect(fourth_anagram?(f_word, s_word)).to be false
    end
  end

  describe "#fifth_anagram?" do
    it "should return true for an anagram" do
      f_word, s_word = small_anagram_pair
      expect(fifth_anagram?(f_word, s_word)).to be true
    end

    it "should return true for a bigger anagram" do
      f_word, s_word = big_anagram_pair
      expect(fifth_anagram?(f_word, s_word)).to be true
    end

    it "should return false for a non anagram" do
      f_word, s_word = non_anagram_pair
      expect(fifth_anagram?(f_word, s_word)).to be false
    end

    it "should return false if chars are the same but counts are different" do
      f_word, s_word = other_non_pair
      expect(fifth_anagram?(f_word, s_word)).to be false
    end
  end



end
