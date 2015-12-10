def morse_encode(str)
    # Hash map of letters to Morse Code
    morse_translater = {'a'=>'.-', 'b'=>'-...', 'c'=>'-.-.', 'd'=>'-..', 'e'=>'.', 
                        'f'=>'..-.', 'g'=>'--.', 'h'=>'....', 'i'=>'..', 'j'=>'.---',
                        'k'=>'-.-', 'l'=>'.-..', 'm'=>'--', 'n'=>'-.', 'o'=>'---',
                        'p'=>'.--.', 'q'=>'--.-', 'r'=>'.-.', 's'=>'...', 't'=>'-',
                        'u'=>'..-', 'v'=>'...-', 'w'=>'.--', 'x'=>'-..-', 'y'=>'-.--',
                        'z'=>'--..'
    }
    
    strMorse = ""
    
    str.each_char {|letter| 
        if morse_translater.has_key?(letter)
            strMorse += morse_translater[letter] + " "
        else
            strMorse += " " # for space (or other unhandled char) - add a space
        end
    }
    
    # Cut off trailing space
    strMorse.chomp!(' ')
    
    return strMorse
        

end
