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
        expect(StringCalculator.add('5')).to eq(5)
      end
    end

  end
end