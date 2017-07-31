class StringCalculator

	def add(string)
		delimiter = find_delimiter(string)
		split_string = split_by_delimiter(string, delimiter)
		split_string.inject(0) { |sum, char| sum + char.to_i }
	end

	def find_delimiter(string)
		string[0..1] == '//' ? (return string[2]) : (return ',')
	end
	
	def split_by_delimiter(string, delimiter)
		string.gsub!('\n', delimiter)
		return string.split(delimiter)
	end
end
