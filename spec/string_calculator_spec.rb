require 'rails_helper'
require_relative '../lib/string_calculator'


RSpec.describe StringCalculator do
  describe 'add numbers that passes in comma separated string' do
    context 'when input is an empty string' do
      it 'expected result returns 0' do
        expect(StringCalculator.add('')).to eq(0)
      end
    end

    context 'when input is a single number' do
      it 'returns the input number' do
        expect(StringCalculator.add('1')).to eq(1)
      end
    end

    context 'when input is two numbers' do 
    	it 'return the sum of the two numbers' do 
    		expect(StringCalculator.add('1,5')).to eq(6)
    	end
    end

    context 'when input is multiple numbers' do 
    	it 'return the sum of multiple number string' do 
    		expect(StringCalculator.add('4,2,7,9,10,15,35')).to eq(82)
    	end
    end

    context 'when input contains \n in between numbers' do 
    	it 'return the sum of the numbers given' do 
    		expect(StringCalculator.add("1\n2,3")).to eq(6)
    	end
    end

    context 'when input contains //;\n1;2 in between numbers' do 
    	it 'return the sum of the numbers given' do 
    		expect(StringCalculator.add("//;\n1;2")).to eq(3)
    	end
    end

    context 'when input contains negative number' do 
    	it 'return the negative number from the string with error message' do 
    		expect { StringCalculator.add("4,5,2,-8") }.to raise_error(RuntimeError, "negative numbers not allowed -8")
    	end
    end
  end
end