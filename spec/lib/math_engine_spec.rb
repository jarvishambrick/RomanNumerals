require 'spec_helper'
require_relative '../../lib/math_engine'

describe MathEngine do
  before do
    @numeral_array = ["X","X","I","V"]
  end
  describe '#translate_numerals' do


    it 'translates each numeral to a numeric value' do
      expect(MathEngine.new.translate_numerals(@numeral_array)).to eql([10,10,1,5])
    end
  end

  describe '#reverse_numeral_array' do
    it 'reverses the romannumeralarray' do
      expect(MathEngine.new.reverse_numeral_array(@numeral_array)).to eql(["V","I","X","X"])
    end
  end

  describe '#calculate_total' do
    it 'calculates the total of a roman numeral arrray' do
     expect(MathEngine.new.calculate_total([10,10,1,5])).to eq(24)
    end
  end

  describe '#accept_and_process' do
    it 'process all aspects of the math' do
      expect(MathEngine.new.accept_and_process(@numeral_array)).to eq(24)
    end
  end
end