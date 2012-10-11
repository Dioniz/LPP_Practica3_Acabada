#File: tc_radio.rb

require_relative "../lib/radio.rb"
require "test/unit"

class TestRadio < Test::Unit::TestCase
  def test_negativo
    assert_in_delta( 0.31, Radio.new(-25), delta=0.001, message="hola" )
  end
  def test_no_number
    assert_in_delta( 0.31, Radio.new("aaaa"), 0.001, [message] )
  end
  def test_correcto
    assert_in_delta( 0.31, Radio.new(2), 0.001, [message] )
  end
end