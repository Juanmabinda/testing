describe 'Ruby on Rails' do
  it { is_expected.to start_with('Ruby').and end_with('Rails')}
  it { expect(fruta).to eq('banana').or eq('naranja').or eq('uva') }

  # este es un helper method arbitrario
  # def fruta
  #   %w(banana naranja uva).sample
  # end

end
