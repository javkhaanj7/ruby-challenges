#Using the Ruby language, have the function FirstFactorial(num) take the num parameter 
#being passed and return the factorial of it (ie. if num = 4, return (4 * 3 * 2 * 1)). 
#For the test cases, the range will be between 1 and 18. 
#Correct Sample Outputs:
#Input = 4 Output = 24
#Input = 8 Output = 40320
#http://coderbyte.com/
 
def FirstFactorial(num)
 
  factorial = 1
  counter = 1
  num.times do
    factorial = factorial * counter
    counter = counter + 1
  end
  
  return factorial 
 
end
