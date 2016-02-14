class String
    def palindrome?
        new_string = self.downcase.gsub(/\W/, "")
	    return new_string == new_string.reverse
    end
end
