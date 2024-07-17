require 'rspec'

name = %w[Dika Koko Setiawan]
age = %w[10 20 30]
hobby = %w[coding manage people exercise]

def position_filter_with_zip(header, *data)
  header.zip(*data)
end

def position_filter(header, *data)
  final_result = []

  header.each_with_index do |item, index|
    combined = [item]
    data.each do |data_array|
      combined << data_array[index]
    end

    final_result << combined
  end

  final_result
end

describe 'Position filter' do
  it 'should be filtered with zip' do
    expect(position_filter_with_zip(name, age, hobby).first).to eq(%w[Dika 10 coding])
  end

  it 'should be filtered without zip' do
    expect(position_filter(name, age, hobby).first).to eq(%w[Dika 10 coding])
  end
end
