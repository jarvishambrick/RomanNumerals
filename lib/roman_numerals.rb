require_relative 'math_engine'

class RomanNumerals

   def process_numeral
     MathEngine.new.accept_and_process(["X","X","I","V"])
   end
 end