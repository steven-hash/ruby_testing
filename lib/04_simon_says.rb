# should echo, afficher le contenue du parametre hello 
def echo(hello)
    return hello
end

#should shout , mettre en majuscule les text entrer
def shout (text)
    text = text.upcase
    return text
end


#should repeat , repeter
def repeat(text , num=2)
     #text = text.chars
    val = ""
    i = 0
    for i in (1..num)
        val = text + " "+ val
    end
    return val.rstrip
 
end

#affiche le nombre caractere demander 
def start_of_word(word,num)
    val =[]
    #scan sur le lettre est s'arrete au nobre demander
    for i in (0...num)
        val << word[i]
    end
    return val.join
end
#recuperation de la premier mots du chaine de caractere envoyer
 def first_word(word)
    val = []
    #.split coupe les chaine de caractere sur l'espace
    #<< ajout la valeur dans la variable
    val << word.split[0]
     return val[0]
end
def islittelword(word)
    littleword = ["and","the" ,"on" , "in"]
    for i in (0...littleword.size)
        if littleword[i]== word
            return true
        end
    end
    return false

end

def titleize(sentence)
    word = sentence.split
    for i in (0...word.size)
       if islittelword(word[i])!=true
        word[i] = start_of_word(word[i] , 1).upcase + word[i][1...word[i].size]
       
        elsif islittelword(word[i])== true && i==0
        word[i] = start_of_word(word[i] , 1).upcase + word[i][1...word[i].size]
        end

    end
    return word.join(" ")

end
