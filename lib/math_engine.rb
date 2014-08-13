class MathEngine

  def reverse_numeral_array(romannumeralarray )
    reversedarray = romannumeralarray
    reversedarray.reverse!
  end

  def translate_numerals(reversednumeralarray)
    reversednumeralarray.map! {|x| numeral_values(x)}

    reversednumeralarray
  end

  def calculate_total(reversednumeralarray)
    total = 0
    reversednumeralarray.each_with_index {|num, x|
      if x - 1 == -1
        total += num
      elsif num >= reversednumeralarray[x - 1]
      total += num
      else
        total -= num
      end
      }
    total
  end

  def accept_and_process(array)
    processingarray = []
    processingarray = reverse_numeral_array(array)
    processingarray = translate_numerals(processingarray)
    total = calculate_total(processingarray)
  end

  private
  def numeral_values(numeral)
    case numeral
      when "I"
        1
      when "V"
        5
      when "X"
        10
      when "L"
        50
      when "C"
        100
      when "D"
        500
      when "M"
        1000
      else
        raise("invalid numeral error")
    end
  end
end