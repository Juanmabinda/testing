require 'persona'

describe 'Matcher have_attributes' do
  it 'have_attributes' do
    persona = Persona.new
    persona.nombre = 'Juanma'
    persona.edad = 20
    expect(persona).to have_attributes(nombre: starting_with('J'), edad: (be >= 20))
  end
end

# o también puede ser más verboso pero más fácil de leer:

describe 'Matcher have_attributes' do
  it 'have_attributes' do
    persona = Persona.new
    persona.nombre = 'Juanma'
    persona.edad = 20
    expect(persona).to have_attributes(nombre: a_string_starting_with('J'), edad: (a_value >= 20))
  end
end
