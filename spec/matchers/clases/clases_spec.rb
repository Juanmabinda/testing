describe 'Matchers de clase' do
  it 'Matcher be_instance_of' do
    expect(10).to be_instance_of(Integer)
  end

  it 'Matcher be_kind_of' do
    expect(10).to be_kind_of(Integer)
  end

  it 'Matcher be_a / be_an' do
    expect(10).to be_an(Integer)
  end
  
  it 'Matcher respond_to' do
    expect('ruby').to respond_to(:size)
  end
end
