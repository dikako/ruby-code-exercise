require 'rspec'
require 'benchmark'

array = Array.new(1_000_000) { rand 100000 }

def new_max(array_data)
  data_max = 0
  array_data.each do |data|
    if data > data_max
      data_max = data
    end
  end

  data_max
end

Benchmark.bm(10) do |x|
  x.report('New max') { new_max(array) }
  x.report('Sort') { array.sort.last }
  x.report('Max') { array.max }
end

# Benchmark result
# user     system      total        real
# New max      0.032941   0.000010   0.032951 (  0.033056)
# Sort         0.097026   0.000885   0.097911 (  0.098239)
# Max          0.000638   0.000000   0.000638 (  0.000638)

describe 'Max Method' do
  it 'should Max' do
    test_array = [1, 3553, 6, 5675757575, 75]
    expect(new_max(test_array)).to eql(5675757575)
  end
end
