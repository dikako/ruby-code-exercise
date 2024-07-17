require 'rspec'

string_array = [
  "Laptop price 10000 juta",
  "Price tag is 30000000",
  "My salary 1000000$"
]

def string_parser_using_scan(string_array)
  final_array = []
  string_array.each do |string|
    final_array << string.scan(/\d+/).first.to_i
  end

  final_array
end

def string_parser(string_array)
  final_array = []
  string_array.each do |string|
    final_array << string.gsub(/\D+/,'').to_i
  end

  final_array
end

describe "String Parser" do
  it 'can take a string and output the correct values (Using "scan" method)' do
    expect(string_parser_using_scan(string_array)).to eq([10000, 30000000, 1000000])
  end

  it 'can take a string and output the correct values (Without "scan" method)' do
    expect(string_parser(string_array)).to eq([10000, 30000000, 1000000])
  end
end

# explanation
# /\d+/ -> for get data number
# /\D+/ -> for get not data number
