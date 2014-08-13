require_relative 'math_engine'

class RomanNumerals

  attr_accessor :numeral_array

   def initialize()

   end

   def process_numeral
     MathEngine.new.accept_and_process(["X","X","I","V"])
   end



 end