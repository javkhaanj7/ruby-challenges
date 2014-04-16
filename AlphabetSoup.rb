#sing the Ruby language, have the function AlphabetSoup(str) take the str string parameter 
#being passed and return the string with the letters in alphabetical order (ie. hello becomes ehllo). 
#Assume numbers and punctuation symbols will not be included in the string. 
#Correct Sample Outputs:
#Input = "coderbyte" Output = "bcdeeorty"
#Input = "hooplah" Output = "ahhloop"
#http://coderbyte.com/

def AlphabetSoup(str)

  chars = str.chars.to_a
  
  chars.each_index do |i|
    (chars.length - i - 1).times do |job|
      if chars[job] > chars[job + 1]
        chars[job], chars[job + 1] = chars[job + 1], chars[job]
      end
    end
  end
  
  return chars.join('') 
         
end
