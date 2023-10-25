# equal testea si es el mismo objeto (Ruby)
describe 'Matchers de igualdad' do
  it '#equal testea si es el mismo objeto' do
    x = 'ruby'
    y = 'ruby'
    expect(x).not_to equal(y)
    expect(x).to equal(x)
  end
end

# "be" es igual que "equal" pero es de rspec
describe 'Matchers de comparación' do
  it '#equal testea si es el mismo objeto' do
    x = 'ruby'
    y = 'ruby'
    expect(x).not_to be(y)
    expect(x).to be(x)
  end
end

# "eql" testea el valor (de Ruby)
describe 'Matchers de comparación' do
  it '#eql testea el valor' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to eql(y)
  end
end

# "eq" es lo mismo que eql pero de rspec
describe 'Matchers de comparación' do
  it '#eql testea el valor' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to eq(y)
  end
end
