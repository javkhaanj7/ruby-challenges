#Using the Ruby language, have the function PowersofTwo(num) take the num parameter being passed 
#which will be an integer and return the string true if it's a power of two. If it's not return the string false. 
#For example if the input is 16 then your program should return the string true but if the input is 22 then the output 
#should be the string false. 
#Correct Sample Outputs:
#Input = 4 Output = "true"
#Input = 124 Output = "false"
#http://coderbyte.com/

def PowersofTwo(num)

  while num > 1 do
    if(num % 2 != 0)
      return "false"
    end
    num /= 2
  end
  return "true"
         
end
