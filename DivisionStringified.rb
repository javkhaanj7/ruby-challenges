#Using the Ruby language, have the function DivisionStringified(num1,num2) take both parameters being passed, 
#divide num1 by num2, and return the result as a string with properly formatted commas. If an answer is only 3 
#digits long, return the number with no commas (ie. 2 / 3 should output "1"). For example: if num1 is 123456789 
#and num2 is 10000 the output should be "12,345".
#Correct Sample Outputs:
#Input = 5 & num2 = 2 Output = "3"
#Input = 6874 & num2 = 67 Output = "103"
#http://coderbyte.com/

def DivisionStringified(num1,num2)

  arr = (num1/num2.to_f).round.to_s.split("")
  result = ""
  (arr.length - 1).downto(0) do |i|
    if(i != arr.length - 1 && (arr.length - i - 1) % 3 == 0)      
      result = ',' << result
    end
    result = arr[i] << result
  end
  
  return result
         
end
