describe 'Matchers de comparación' do
  it '>' do
    expect(5).to be > 1
  end

  it '<' do
    expect(5).to be < 10
  end

  it '<=' do
    expect(5).to be <= 5
  end

  it '>=' do
    expect(5).to be >= 4
  end

  it 'matcher be_between inclusive' do
    expect(5).to be_between(2,5).inclusive
  end

  it 'matcher be_between exclusive' do
    expect(5).to be_between(2,6).exclusive
  end

  it 'matcher match (regex)' do
    expect("juanmanuelbinda@gmail.com").to match(/..@../)
  end

  # con string
  it 'matcher start_with strings' do
    expect("juanmanuelbinda@gmail.com").to start_with("j")
  end

  # con array
  it 'matcher start_with with numbers' do
    expect([3,6,9]).to start_with(3)
  end

  # con string
  it 'matcher end_with strings' do
    expect("juanmanuelbinda@gmail.com").to end_with("m")
  end

  # con array
  it 'matcher end_with with numbers' do
    expect([3,6,9]).to end_with(9)
  end
end
