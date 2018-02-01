# Ejercicio 4: Constructor con argumentos.
# Crea una clase llamada Dog cuyo constructor reciba como argumento un hash con
 # la  siguiente estructura:
# propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
# Instanciar un nuevo perro a partir de las propiedades contenidas en el hash.
#  Luego generar un método
# llamado ladrar que, mediante interpolación, imprima "Beethoven está ladrando!"


class Dog
  attr_reader :nombre, :raza, :color
  def initialize(hash)
    @nombre = hash[:nombre]
    @raza = hash[:raza]
    @color = hash[:color]
  end

  def ladrar
     "#{@nombre} esta ladrando"
  end
end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

puts Dog.new(propiedades).ladrar
