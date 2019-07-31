
class Dog
  def initialize(propiedades)
    @name = propiedades[:nombre]
  end
def ladrar
  puts "#{@name} esta ladrando"
end
end
propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
perro = Dog.new(propiedades)
print perro.ladrar
