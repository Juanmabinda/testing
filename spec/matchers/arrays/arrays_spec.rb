describe Array.new([1, 2, 3]), "Array" do
  it '#include' do
    expect(subject).to include(2)
    # se le pueden pasar 2 elementos también:
    expect(subject).to include(2, 1)
  end

  # se le puede pasar para que matchee un array concreto con match_array
  # solo funciona con el array exacto pero permite pasarle los número desordenados
  it '#match_array' do
    expect(subject).to match_array([1, 2, 3])
  end

  # contain_exactly no permite usar el array
  it '#contain_exactly' do
    expect(subject).to contain_exactly(1, 2, 3)
  end
end
