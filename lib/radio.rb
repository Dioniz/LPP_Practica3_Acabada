#File: radio.rb
include Math
class Radio
  def initialize(num)
    if num.is_a?(Numeric)
      if num>=0
	@x = per(num)
      else
	puts "Error: El numero es negativo"
      end
    else
      puts "Error: El dato pasado por linea de comandos no es un numero"
    end
  end
  
  def per(num)
    @x= num/(2*PI)
    puts "Para el perimetro: #{num} , el radio es: #{@x}"
  end
end

#Para mostrarlo

