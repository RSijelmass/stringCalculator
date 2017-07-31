require 'string_calculator'

describe StringCalculator do
	let(:calculator) { StringCalculator.new }
	it 'adds two numbers together from a string' do
			expect(calculator.add('1,2')).to eq 3
	end
end

