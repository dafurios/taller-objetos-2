# Ejercicio 08 Mascota Virtual:
# Vamos a generar una mascota virtual y interactuaremos con ella.
# Crea una clase llamada MyPet, La cual, al inicializarse genere una mascota
# con los siguientes parametros
#
# def initialize name
#  @name = name
#  @sleep = false
#  @satisfied = 10 # Esta lleno
#  @fullIntestine = 0 # No necesita ir
#  puts @name + ' nace '
#  end
# Crea un método para hacer caminar a tu mascota e ir al baño, puedes
# seguir este ejemplo:
#
# def walk
#  puts 'Haces caminar a ' + @name + '.'
#  @satisfied -= 2
#  @fullIntestine = 2
#  timeLapse
#  end
# Prueba el siguiente Método para hacer pasar el tiempo:
# def timeLapse
#  if @satisfied > 0
#  # Mueve el alimento del estomago al intestino.
#  @satisfied = @satisfied - 1
#  @fullIntestine = @fullIntestine + 1
#  else # Nuestro mascota esta hambrienta!
#  if @sleep
#  @sleep = false
#  puts '¡Se despierta de repente!'
#  end
#  puts '¡' + @name + ' esta hambriento! En su desesperacion, ¡Murio de Hambre!'
#  exit # Sale del programa.
#  end
#  if @fullIntestine >= 10
#  @fullIntestine = 0
#  puts '¡Uy! ' + @name + ' tuvo un accidente...'
#  end
#  if hungry?
#  if @sleep
#  @sleep = false
#  puts '¡Se despierta de repente!'
#  end
#  puts 'El estomago de ' + @name + 'retumba...'
#  end
#  if needToGo?
#  if @sleep
#  @sleep = false
#  puts 'Se despierta de repente!'
#  end
#  puts @name + ' hace la danza del baño...'
#  end
#  end
#
#  Genera el método comer considerando que llenara su panza y pasara el tiempo.
#  Genera el método dormir considerando que pasara el tiempo y vaciara su panza.
#  Generar un menu para interactuar con tu mascota(alimentarlo, hacerlo dormir,
#   salir a caminar) debes  poder iterar las opciones, hasta que, Si la mascota
#  muere de hambre debe terminar el programa


class MyPet
  def initialize name
    @name = name
    @sleep = false
    @satisfied = 10 #  Esta lleno
    @fullIntestine = 0 # No necesita ir
    puts @name + '  nace  '
  end

  def walk
    puts 'Haces caminar a ' + @name + '.'
    @satisfied -= 2
    @fullIntestine  += 2
    timeLapse
  end

  def bathroom
    puts "#{@name} está en el baño..."
    @fullIntestine = 0
    timeLapse
  end

  def feed
    puts "#{@name} está comiendo!"
    @satisfied = 10
    timeLapse
  end

  def sleep
    puts "#{@name} está durmiendo zZz!"
    @sleep = true
    @satisfied -= 2
    @fullIntestine += 2
    timeLapse
  end

  def hungry?
    @satisfied <= 2
  end

  def needToGo?
    @fullIntestine == 10
  end

  def timeLapse
    if @satisfied > 0
      #  Mueve el alimento del vientre al intestino.
      @satisfied      = @satisfied      - 1
      @fullIntestine  = @fullIntestine  + 1
    else  #  Nuestro dragon esta hambriento!
      if @sleep
        @sleep = false
        puts '¡Se despierta de repente!'
      end
      puts '¡' + @name + ' esta hambriento!  En su desesperacion, ¡Murio de Hambre!'
      exit  #  Sale del programa.
    end


    if @fullIntestine  > 10
      @fullIntestine  = 0
      puts '¡Uy!  ' + @name + ' tuvo un accidente...'
    end

    if hungry?
      if @sleep
        @sleep = false
        puts '¡Se despierta de repente!'
      end
      puts 'El estomago de ' + @name + 'retumba...'
    end

    if needToGo?
      if @sleep
        @sleep = false
        puts 'Se despierta de repente!'
      end
      puts @name + ' hace la danza del baño...'
    end
  end
end

def menu
  puts '--MENU--'
  puts '1. Alimentar mascota'
  puts '2. Hacer dormir mascota'
  puts '3. Hacer caminar a la mascota'
  puts '4. Que la mascota vaya al baño'

  menu = gets.chomp.to_i
end

mascota = MyPet.new('Rocky')

continuar = true
while continuar
  case menu
  when 1
    puts '* Alimentando a la mascota *'
    mascota.feed
  when 2
    puts '* Haciendo dormir a la mascota *'
    mascota.sleep
  when 3
    puts '* Haciendo caminar a la mascota *'
    mascota.walk
  when 4
    puts '* La mascota va al baño *'
    mascota.bathroom
  else
    puts 'Opción no es válida... Intente nuevamente'
  end
end
