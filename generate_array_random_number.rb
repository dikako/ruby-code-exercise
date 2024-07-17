require 'rspec'

def random_numbers
  Array.new(20) { rand 1000 }
end

describe 'Random number collection' do
  it 'should random number' do
    random1 = random_numbers
    random2 = random_numbers
    expect(random1.count).to eq(20)
    expect(random1).to_not eq(random2)
  end
end
