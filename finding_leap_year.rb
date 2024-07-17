require 'rspec'
require 'date'

years = (2000..3000).to_a


def leap_year?(year)
  if year % 4 == 0
    if year % 100 == 0
      if year % 400 == 0
        true
      else
        false
      end
    else
      true
    end
  else
    false
  end
end

def leap_year(array_year)
  listed_leap_year = []
  array_year.each do |year|
    listed_leap_year << year if leap_year?(year)
  end

  puts "not leap: #{listed_leap_year.inspect}"
  listed_leap_year
end

def leap_year_with_leap_method(array_year)
  listed_leap_year = []
  array_year.each do |year|
    y = Date.new(year)
    listed_leap_year << year if y.leap?
  end

  puts "leap: #{listed_leap_year.inspect}"
  listed_leap_year
end

describe 'Leap years' do
  it 'should Leap years' do
    expect(leap_year(years)).to eq(leap_year_with_leap_method(years))
  end
end
