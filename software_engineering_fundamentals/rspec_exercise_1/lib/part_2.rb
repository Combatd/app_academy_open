def hipsterfy (word)
    vowels = 'aeiou'
    char = word.chars
    reverseWord = word.reverse
    reverseWord.each_char.with_index do |letter, i|
        if letter == 'a' || letter == 'e' || letter == "i" || letter == 'o' || letter == 'u'
            reverseWord.slice!(i)
            break # ends loop once last vowel is removed
        end
    end
    newWord = reverseWord.reverse
    return newWord
end