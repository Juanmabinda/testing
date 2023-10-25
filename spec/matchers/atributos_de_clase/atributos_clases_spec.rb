require 'persona'

describe 'atributos' do

  before(:each) do
    # puts '****** ANTES DE CADA TEST INDIVIDUAL'
    @persona = Persona.new
  end

  # each y example son sinónimos
  after(:example) do
    # puts '****** DESPUÉS DE CADA TEST INDIVIDUAL'
    @persona.nombre = 'Sin Nombre'
    puts ">>>>>>>>>> #{@persona.inspect}"
  end

  it 'have_attributes' do
    # persona = Persona.new (esta linea se comenta porque tengo un before(:each))
    @persona.nombre = 'Juanma'
    @persona.edad = 20
    expect(@persona).to have_attributes(nombre: starting_with('J'), edad: (be >= 20))
  end

# o también puede ser más verboso el expect pero más fácil de leer:

  it 'have_attributes' do
    # persona = Persona.new
    @persona.nombre = 'Juanma'
    @persona.edad = 20
    expect(@persona).to have_attributes(nombre: a_string_starting_with('J'), edad: (a_value >= 20))
  end


  it 'have_attributes' do
    # persona = Persona.new
    @persona.nombre = 'Jose'
    @persona.edad = 25
    expect(@persona).to have_attributes(nombre: a_string_starting_with('J'), edad: (a_value >= 20))
  end

end
