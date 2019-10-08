def who_is_bigger (a , b , c)
    max = a
    test ="a is bigger"
    if a == nil || b == nil || c == nil
        return "nil detected"
    end
    if max < b
        max = b
        test  = "b is bigger"
    end
    if max < c
        max = c
        test = "c is bigger"
    end
        return test
end
#fonction pour enlever les L T A
def noLTA(chars)
    atl = ["l","t","a"]
    atl.map do |lta|
        if chars.downcase == lta
            return true 
        end
    end
    return false
end

def reverse_upcase_noLTA(text)
    res = text.chars
    retour = []
#receuillir le mots de text et enlever le L T A 
    res.map do |letter|
        if noLTA(letter) == false
            retour << letter
        end
    end
    #assembler les mots 
    sentence_noLTA = retour.join
    #trasformation en majuscule
    sentence_Upcase = sentence_noLTA.upcase
    #renvesrer le moys en sens inverse 
    sentence_Reverse = sentence_Upcase.reverse
    #recuperation de la total des phrase
    return sentence_Reverse
end

#42 finder
def array_42(tableau)
    #recherche dans le tableau
    for i in (0...tableau.length)
        if tableau[i] == 42
            return true
        end
    end
    return false
end

def magic_array

end
