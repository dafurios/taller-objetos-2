# Ejercicio 6: Arrays y objetos
# Dado el siguiente código:
# class Student
#  attr_accessor :name
#  def initialize()
#  @name = name
#  end
# end
# nombres = %w(Alicia Javier Camila Francisco Pablo Josefina)
# 1. Iterar los nombres para crear un nuevo arreglo de objetos de Student.
# 2. Modificar el objeto para que pueda recibir una nota del alumno.
# 3. Agregar un getter para la nota.
# 4. Modificar la iteración para asignar notas incrementales de 1 en adelante.
# 5. Utilizar un map para obtener todas las notas de los alumnos a partir del
# arreglo de estudiantes.


# 3. Agregar un getter para la nota.

class Student
   attr_accessor :name, :notas
   def initialize(name, notas)
     @name = name
     @notas = notas
   end
end
nombres = %w(Alicia Javier Camila Francisco Pablo Josefina)

# 1. Iterar los nombres para crear un nuevo arreglo de objetos de Student.
# 2. Modificar el objeto para que pueda recibir una nota del alumno.

nuevo_arreglo = []
notas = [7, 4, 5, 9, 3, 10]
6.times do
  nuevo_arreglo.push(Student.new(nombres.sample, notas.sample))
end
nuevo_arreglo.each do |obj|
  puts "#{obj.name} con nota #{obj.notas}"
end
puts "*******************************************"

# 4. Modificar la iteración para asignar notas incrementales de 1 en adelante.
incrementales = 0
nuevo_arreglo2 = []
6.times do
  incrementales += 1
  nuevo_arreglo2.push(Student.new(nombres.sample, incrementales))
end

nuevo_arreglo2.each do |incrementales|

  puts "#{incrementales.name} con nota #{incrementales.notas}"
end
puts "*******************************************"


# 5. Utilizar un map para obtener todas las notas de los alumnos a partir del
# arreglo de estudiantes.

nuevo_arreglo2.map do |e|
 puts "#{e.name} y #{e.notas}"
end
