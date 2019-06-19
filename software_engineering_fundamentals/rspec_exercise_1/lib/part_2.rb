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

def vowel_counts (str)
    newStr = str.downcase
    
    vowelHash = {
        'a' => 0,
        'e' => 0,
        'i' => 0,
        'o' => 0,
        'u' => 0
    }

    newStr.each_char.with_index do |letter, i|
        if letter == 'a' || letter == 'e' || letter == "i" || letter == 'o' || letter == 'u'
            vowelHash[letter] += 1
        end
    end
    
    return vowelHash
end

def caesar_cipher(message, n)
alphabet = ('a'..'z').to_a 
newStr = ""

    message.each_char do |char|
        if alphabet.include?(char)
            oldIdx = alphabet.index(char)
            newIdx = oldIdx + n
            newStr += alphabet[newIdx % 26] # no jumping out of array
        else
            newStr += char # special characters not changed    
        end
    end    

newStr # returns without keyword
end