#Using the Ruby language, have the function CheckNums(num1,num2) take both parameters 
#being passed and return the string true if num2 is greater than num1, otherwise return the 
#string false. If the parameter values are equal to each other then return the string -1. 
#Correct Sample Outputs:
#Input = 3 & num2 = 122 Output = "true"
#Input = 67 & num2 = 67 Output = "-1"
#http://coderbyte.com/

def CheckNums(num1,num2)

  if(num1 == num2)
    return '-1'
  elsif(num1 < num2)
    return 'true'
  end 
  
  return 'false' 
         
end
