describe 'satisfy' do
  it { expect(10).to be_even}

  # otra forma es usar satisfy:
  it { expect(10).to satisfy { |x| x % 2 == 0 }}

  # múltiplo de 3:
  it { expect(9).to satisfy { |x| x % 3 == 0 }}

  # múltiplo de 3, pero se mejora la lectura:
  it { expect(9).to satisfy('be a multiple of 3') {|x| x % 3 == 0 }}
end
