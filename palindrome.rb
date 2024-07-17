require 'rspec'

def palindrome?(string)
  string.downcase == string.downcase.reverse
end

describe 'palindrome?' do
  it 'should be result true or false' do
    expect(palindrome?('apa')).to eql(true)
    expect(palindrome?('isi')).to eql(true)
    expect(palindrome?('dika')).to eql(false)
  end
end
