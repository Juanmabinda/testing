describe 'Matchers verdadero / falso' do
  it 'matcher be true' do
    expect(1.odd?).to be true
  end

  it 'matcher be false' do
    expect(1.even?).to be false
  end

  it 'matcher be_truthy' do
    expect(1.odd?).to be_truthy
  end

  it 'matcher be_falsey' do
    expect(1.even?).to be_falsey
  end

  it 'matcher be_nill' do
    expect(defined? x).to be_nil
  end

end
