def combine_anagrams(words)
 #   <YOUR CODE HERE>
    result = {}
    output = Array.new
    words.each do |word|
        word_origin = word.downcase.each_char.to_a.sort.join
        if result.keys.include?(word_origin)
            result[word_origin].push(word)
        else
            result[word_origin] = [word]
        end
    end
    result.each {|key,value| output.push("#{value}")}
    puts output
end
