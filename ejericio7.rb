# Ejercicio 7: Objeto y arrays desde cero
# 1. Crear la clase punto, un punto tiene una posición x y una posición y .
# 2. Crear métodos getter y setter para los atributos del punto.
# 3. Crear 10 puntos al azar.

class Punto
  def initialize(x, y)
    @x = x
    @y = y
  end

#getter
  def x
    @x
  end

  def y
    @y
  end

#setter
  def x=(x)
    @x = x
  end

  def y=(y)
    @y = y
  end
end


10.times do
  azar = Punto.new(rand(1..100),rand(1..100))
    puts "#{azar.x} & #{azar.y}"
end
