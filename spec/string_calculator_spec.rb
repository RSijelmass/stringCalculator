require 'string_calculator'

describe StringCalculator do
	let(:calculator) { StringCalculator.new }
	
	describe 'adds numbers with default delimiter ","' do	
		it 'adds two numbers together from a string' do
			expect(calculator.add('1,2')).to eq 3
		end
		it 'adds 1 number and returns it from a string' do
			expect(calculator.add('1')).to eq 1
		end

		it 'takes 0 numbers, and returns 0' do
			expect(calculator.add('no,numbers,here!')).to eq 0
		end

		it 'takes in 5 numbers from a string, and returns the sum' do
			expect(calculator.add('1,2,3,4,five,6')).to eq 16
		end

		it 'handles lines ("\n") within a string' do
			expect(calculator.add('1,2\n3')).to eq 6
		end
	end

	describe 'handles delimiters' do
		it 'takes a different delimiter' do
		end
	end
end

