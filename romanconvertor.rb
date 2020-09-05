def fromRoman(romanNumber)

    strings = ["A","B","C","D","E","F","G","H","J","K","N","O","P","Q","R","S","T","U","W","Y","Z"]
    # Replace the following line with the actual code!
   
    if (romanNumber == romanNumber.upcase)
        strings.each do |letter|
            if (romanNumber.include? (letter))
                raise TypeError
            end
        end   
       return to_arabic(romanNumber)
    else
        raise TypeError
    end

        raise NotImplementedError
end

def toRoman(arabicNumber)
    # Replace the following line with the actual code!
    if (arabicNumber >= 1 && arabicNumber <= 3999)
        return  to_roman(arabicNumber)
    else
        raise RangeError
    end
    raise NotImplementedError

end




def roman_mapping
{
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
}
end

def to_arabic(str)
    result = 0
    roman_mapping.values.each do |roman|
    while str.start_with?(roman)
        result += roman_mapping.invert[roman]
        str = str.slice(roman.length, str.length)
    end
    end
    result
end

def to_roman(number)
    result = ""
    roman_mapping.keys.each do |key|
        quotient, modulus = number.divmod(key)
        result << roman_mapping[key] * quotient
        number = modulus
    end
    result
end