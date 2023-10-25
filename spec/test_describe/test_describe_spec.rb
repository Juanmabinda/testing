require 'calculator'

# acá Calculator es la clase y subject la instancia
describe Calculator do
  it 'has some behaviour' do
    expect(subject.sum(2, 4)).to eq(6)
  end
end

# acá la clase es String y 'Juanma' la instancia
describe 'Juanma' do
  it 'clase String' do
    expect(subject.size).to eq(6)
  end
end

# acá la clase es Array y la instancia [1, 4, 6, 8]
describe [1, 4, 6, 8] do
  it 'clase Array' do
    expect(subject).to be_kind_of(Array)
  end
end
