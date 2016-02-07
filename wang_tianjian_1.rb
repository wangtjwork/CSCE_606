def palindrome? (string)
	new_string = string.downcase.gsub(/\w/, "")
	return new_string == new_string.reverse
end
