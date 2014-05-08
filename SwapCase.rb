#Using the Ruby language, have the function SwapCase(str) take the str parameter 
#and swap the case of each character. For example: if str is "Hello World" the output should be hELLO wORLD. 
#Let numbers and symbols stay the way they are.  
#Correct Sample Outputs:
#Input = "Hello-LOL" Output = "hELLO-lol"
#Input = "Sup DUDE!!?" Output = "sUP dude!!?"
#http://coderbyte.com/

def SwapCase(str)

  result = ''
  str.each_char do |x|
    if(x.match(/[A-Z]/))
      result += x.downcase
    elsif(x.match(/[a-z]/))
      result += x.upcase
    else
      result += x
    end
  end
  return result 
         
end
