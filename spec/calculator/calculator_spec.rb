require 'calculator'

RSpec.describe Calculator, 'Clase calculadora' do

  #subject(:calc) { Calculator.new(1,2,3) }

  context 'sum of 2 numbers' do
    it 'positive numbers' do
      result = subject.sum(4,5)
      expect(result).to eq(9)
    end

    xit 'negative numbers' do
      result = subject.sum(-4,5)
      expect(result).to eq(1)
    end
  end

  context '#div' do
    it 'División por cero con raise_exception' do
      expect{subject.div(3, 0)}.to raise_exception
    end
  end

  context '#div' do
    it 'División por cero con raise_error' do
      expect{subject.div(3, 0)}.to raise_error('divided by 0')
    end
  end

  context '#div' do
    it 'División por cero con raise_error y regex' do
      expect{subject.div(3, 0)}.to raise_error(/divided/)
    end
  end
end
