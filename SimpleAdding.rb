#Using the Ruby language, have the function SimpleAdding(num) add up all the numbers 
#from 1 to num. For the test cases, the parameter num will be any number from 1 to 1000. 
#Correct Sample Outputs:
#Input = 12 Output = 78
#Input = 140 Output = 9870
#http://coderbyte.com/

def SimpleAdding(num)

  sum = 0
  (num + 1).times do |x|
    sum = sum + x
  end
  return sum 
         
end
