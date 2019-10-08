def time_string(nbsec)
    #initialisaion de variable 
    minutes,second,hour = 0,0,0
 #converssion du second donné en heure et ent minute   
    hour = nbsec/3600
    minutes = (nbsec / 60) %60
    second = nbsec % 60
#ajout de 0 si le nombre est inferieure a 10
    if minutes /10 <= 0
        minutes = "0"+minutes.to_s
    end
    if second /10 <= 0
        second = "0"+second.to_s
    end
    if hour /10 <= 0
        hour = "0"+hour.to_s
    end
    #retourne en heure , en minutes et en seconde la valeur donné au depart 
    return "#{hour}:#{minutes}:#{second}"
end
