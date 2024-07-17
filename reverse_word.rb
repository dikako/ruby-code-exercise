require 'rspec'

def reverse_word_using_reverse_method(word)
  word.split(' ').reverse.join(' ')
end

def reverse_word_use_down_to(word)
  final_word = []
  split_text = word.split(' ')

  (split_text.length - 1).downto(0) do |i|
    final_word << split_text[i]
  end

  final_word.join(' ')
end

def reverse_word(word)
  split_text = word.split(' ')
  final_word = []

  index = split_text.length - 1
  while index >= 0
    final_word << split_text[index]
    index -= 1
  end

  final_word.join(' ')
end

def reverse_word_basic(word)
  split_text = word.split(' ')
  final_word = []

  index = split_text.length - 1
  (0..index).each do |i|
    final_word << split_text[index]
    index -= 1
  end

  final_word.join(' ')
end

describe 'reverse_word' do
  it 'should be word reverse (using "reverse" method)' do
    test_sentence = "behind your on im"
    expect(reverse_word_using_reverse_method(test_sentence)).to eq("im on your behind")
  end

  it 'should be word reverse (without "reverse" method use "downto")' do
    test_sentence = "behind your on im"
    expect(reverse_word_use_down_to(test_sentence)).to eq("im on your behind")
  end

  it 'should be word reverse' do
    test_sentence = "behind your on im"
    expect(reverse_word(test_sentence)).to eq("im on your behind")
  end

  it 'should be word reverse basic' do
    test_sentence = "behind your on im"
    expect(reverse_word_basic(test_sentence)).to eq("im on your behind")
  end
end
