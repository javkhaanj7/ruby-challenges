#Using the Ruby language, have the function LetterCount(str) take the str parameter being passed 
#and return the first word with the greatest number of repeated letters. For example: "Today, is the greatest day ever!" 
#should return greatest because it has 2 e's (and 2 t's) and it comes before ever which also has 2 e's. 
#If there are no words with repeating letters return -1. Words will be separated by spaces. 
#Correct Sample Outputs:
#Input = "Hello apple pie" Output = Hello
#Input = "No words" Output = -1
#http://coderbyte.com/

def LetterCount(str)
  
  arr = str.split(" ")
  rLetters = {}
  arr.each do |x|
    charArr = x.chars.to_a
    rChars = {}
    charArr.each_index do |y|
      if(rChars[charArr[y]] == nil)
        count = 1
        (y + 1 .. charArr.length - 1).each do |z|
          if(charArr[y] == charArr[z])
            count += 1
          end
        end
        rChars[charArr[y]] = count
      end
    end
    count = 0  
    rChars.each do |key, value|
      if(value > count)
        count = value
        rLetters[x] = count        
      end
    end    
  end
  
  str = ""
  count = 0
  arr.each do |x|
    if(rLetters[x].to_i > count)
      str = x
      count = rLetters[x].to_i
    end
  end
  
  if(count == 1)
    return -1
  end
  
  return str 
         
end
