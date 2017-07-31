class StringCalculator

	def add(string)
		string.split("").inject(0) { |sum, char| sum + char.to_i }
	end
end
