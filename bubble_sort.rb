require 'rspec'
require 'benchmark'

class Array
  def bubble_sort
    n = self.length - 1

    loop do
      swapped = false

      n.times do |i|
        if self[i] > self[i + 1]
          self[i], self[i + 1] = self[i + 1], self[i]
          swapped = true
        end
      end

      break unless swapped
    end

    self
  end
end

def bubble_sort_by(arr)
  length = arr.length - 1

  loop do
    swapped = false

    length.times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end

    break unless swapped
  end

  arr
end

arr = [4, 1, 6, 10, 44, 2, 3, 6767, 7868, 6, 434523, 5235, 23523, 523]

Benchmark.bm(10) do |x|
  x.report('Bubble sort') { arr.bubble_sort }
  x.report('Sort') { arr.sort }
end

# Benchmark report
# user     system      total        real
# Bubble sort  0.000010   0.000001   0.000011 (  0.000010)
# Sort         0.000003   0.000001   0.000004 (  0.000003)

describe 'Bubble sort' do
  it 'should bubble sort' do
    expect(arr.bubble_sort).to eq(arr.sort)
  end
end
