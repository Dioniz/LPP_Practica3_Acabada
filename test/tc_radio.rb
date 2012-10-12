#File: tc_radio.rb

#require_relative "../lib/radio.rb"
require "radio"
require "test/unit"
include Math

class TestRadio < Test::Unit::TestCase
	
	def test_tipo
		assert_raise (RuntimeError) {Radio.new("letras").radio()}
	end
	
	def test_negativo
		assert_equal(5/(2*PI), Radio.new(-5).radio(), "El radio no puede ser negativo")
	end
	
	def test_correcto
		assert_equal(5/(2*PI), Radio.new(5).radio())
	end
  
=begin
	def test_negativo
    assert_in_delta( 0.31, Radio.new(-25), delta=0.001, message="hola" )
  end
  def test_tipo
    assert_in_delta( 0.31, Radio.new("aaaa"), 0.001, [message] )
  end
  def test_correcto
    assert_in_delta( 0.31, Radio.new(2), 0.001, [message] )
  end	
=end 
end