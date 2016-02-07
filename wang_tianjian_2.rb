def count_words(string)
    hash_table = {}
    word_buffer = string.downcase.gsub(/\W/ , " ").split
    word_buffer.each do |word|
        if hash_table.include?(word)
            hash_table[word] += 1
        else
            hash_table[word] = 1
        end
    end
    puts hash_table
end
