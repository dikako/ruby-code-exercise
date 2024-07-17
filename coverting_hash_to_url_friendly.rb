require 'rspec'

class Hash
  def param_converter
    self.map {|i| i * "="} * "&"
  end
end

def param_converter(hash_data)
  final_url = []
  hash_data.map do |data|
    final_url << (data * "=")
  end

  final_url.join("&")
end

hash = { :topic => "baseball", :team => "Dika" }

puts hash.param_converter.inspect
puts param_converter(hash).inspect


describe 'HTML Param converter' do
  it 'should converter' do
    expect(hash.param_converter).to eq('topic=baseball&team=Dika')
    expect(param_converter(hash)).to eq('topic=baseball&team=Dika')
  end
end
