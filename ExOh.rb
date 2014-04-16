#Using the Ruby language, have the function ExOh(str) take the str parameter 
#being passed and return the string true if there is an equal number of x's and o's, 
#otherwise return the string false. Only these two letters will be entered in the string, 
#no punctuation or numbers. For example: if str is "xooxxxxooxo" then the output should 
#return false because there are 6 x's and 5 o's.  
#Correct Sample Outputs:
#Input = "xooxxo" Output = "true"
#Input = "x" Output = "false"
#http://coderbyte.com/

def ExOh(str)

  counter1 = 0
  counter2 = 0
  str.each_char do |x|
    if(x == 'x')
      counter1 += 1
    elsif(x == 'o')
      counter2 += 1
    end
  end
  return counter1 == counter2 
         
end
