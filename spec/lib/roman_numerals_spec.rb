require 'spec_helper'
require_relative '../../lib/roman_numerals'

describe RomanNumerals do

  describe '#Process_numeral' do
    before do
      @numeral_array = ["X","X","I","V"]
      @processor = RomanNumerals.new()
    end
    it 'calls the sends and receives a response from the Math Engine' do
      expect(@processor.process_numeral(@numeral_array)).to eq(24)
    end
  end
end