# Copia el siguiente código y ejecútalo. Luego corrige los errores para poder
# imprimir ejecutar ambos métodos y finalmente obtener el valor de la variable
# de a.

class Anything

  attr_reader :a
  def initialize(a)
    @a = a
  end

   def foo
     a = 5
   end

   def bar
     @a += 1
   end
  end

any = Anything.new(0)
puts any.foo
puts any.bar
puts any.a
