require_relative 'math_engine'

class RomanNumerals
  def initialize
  end

  def process_numeral(array)
    MathEngine.new.accept_and_process(array)
  end
end