def palindrome? (string)
	new_string = string.downcase.gsub(/\W/, "")
	return new_string == new_string.reverse
end
