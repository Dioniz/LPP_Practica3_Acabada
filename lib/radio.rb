#File: radio.rb
include Math
class Radio
	def initialize(perimetro)
		raise unless perimetro.is_a?(Numeric)
		puts perimetro.class
		@x = perimetro
	end
	def radio
		@x/(2*PI)
	end
end
#Para mostrarlo
#puts Radio.new(2).radio()