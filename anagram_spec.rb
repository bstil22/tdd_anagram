require 'rspec'
require_relative 'anagram'

describe 'letter_counts' do
  it 'should count the items properly' do
    expect(letter_counts("aabbaarrcade")).to eq({
      'a' => 5,
      'b' => 2,
      'c' => 1,
      'd' => 1,
      'e' => 1,
      'r' => 2,
    })
  end
end

describe 'anagrams?' do
  context 'when the two strings are anagrams of one another' do
    let(:string1) { "ababbbacssfrf" }
    let(:string2) { "fsfsabcrbaabb" }
    it 'returns true' do
      expect(anagrams?(string1, string2)).to eq(true)
    end
  end

  context 'when the two strings are not anagrams of one another' do
    let(:string1) { "ababcaacssfrf" }
    let(:string2) { "fsfsabcrbaabb" }
    it 'returns false' do
      expect(anagrams?(string1, string2)).to eq(false)
    end
  end
end

describe 'anagrams2?' do
  context 'when the two strings are anagrams2 of one another' do
    let(:string1) { "ababbbacssfrf" }
    let(:string2) { "fsfsabcrbaabb" }
    it 'returns true' do
      expect(anagrams2?(string1, string2)).to eq(true)
    end
  end

  context 'when the two strings are not anagrams2 of one another' do
    let(:string1) { "ababcaacssfrf" }
    let(:string2) { "fsfsabcrbaabb" }
    it 'returns false' do
      expect(anagrams2?(string1, string2)).to eq(false)
    end
  end
end
