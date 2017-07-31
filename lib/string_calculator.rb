class StringCalculator

	def add(string)
		split_string = split_by_delimiter(string)
		split_string.inject(0) { |sum, char| sum + char.to_i }
	end

	def split_by_delimiter(string, delimiter = ',')
		string.gsub!('\n', delimiter)
		return string.split(delimiter)
	end
end
