def palindrome?(string)
	string.downcase
	string.gsub(" " , "")
	new_string = string.reverse
	return new_string == string
end
