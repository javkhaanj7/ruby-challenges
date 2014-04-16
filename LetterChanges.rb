#Using the Ruby language, have the function LetterChanges(str) take the str parameter 
#being passed and modify it using the following algorithm. Replace every letter in the 
#string with the letter following it in the alphabet (ie. c becomes d, z becomes a). 
#Then capitalize every vowel in this new string (a, e, i, o, u) and finally return this modified string.
#Correct Sample Outputs:
#Input = "hello*3" Output = "Ifmmp*3"
#Input = "fun times!" Output = "gvO Ujnft!"
#http://coderbyte.com/

def LetterChanges(str)

  replacedString = ''
  str.each_char do |c|
    nextChar = ''
    if(c.match(/[a-zA-Z]/))
      if(c == 'z' || c == 'Z')
        nextChar = 'a'      
      elsif
        nextChar = (c.each_byte.first + 1).ord.chr
      end
    elsif
      nextChar = c
    end
    
    if(nextChar.match(/[aeiou]/))
        nextChar = nextChar.upcase
    end
    
    replacedString = replacedString + nextChar
  end
  
  return replacedString 
         
end
