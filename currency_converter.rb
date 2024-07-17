require 'rspec'

def currency_converter(amount, location)
  case location.upcase
  when 'US'
    "$%.2f" % amount
  when 'ID'
    "Rp%.2f" % amount
  when 'UK'
    ("ę%.2f" % amount).gsub(".", ",")
  end
end

describe 'Currency converter' do
  it 'should converted' do
    expect(currency_converter(1000, 'US')).to eq('$1000.00')
    expect(currency_converter(1000, 'ID')).to eq('Rp1000.00')
    expect(currency_converter(1000, 'UK')).to eq('ę1000,00')
  end
end
