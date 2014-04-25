#Using the Ruby language, have the function ArrayAdditionI(arr) take the array of numbers 
#stored in arr and return the string true if any combination of numbers in the array can be 
#added up to equal the largest number in the array, otherwise return the string false. 
#For example: if arr contains [4, 6, 23, 10, 1, 3] the output should return true because 4 + 6 + 10 + 3 = 23. 
#The array will not be empty, will not contain all the same elements, and may contain negative numbers.  
#Correct Sample Outputs:
#Input = 5,7,16,1,2 Output = "false"
#Input = 3,5,-1,8,12 Output = "true"
#http://coderbyte.com/

def ArrayAdditionI(arr)
  @largestNum = 0
  @isMatch = 0
  arr.each do |x|
    if(x > @largestNum)
      @largestNum = x
    end
  end
    
  newArr = []
  arr.each do |x|
    if(x != @largestNum)
      newArr << x
    end
  end
        
  combination("", newArr)
  
  if(@isMatch == 1)
    return "true"    
  end
  
  return "false"
  
end

def combination(prefix, arr)
  arr.each_index do |x|
    prefix += "+" if prefix.length > 0 && prefix[-1, 1] != '+'
	sum = prefix + arr[x].to_s
	if(eval(sum).to_i == @largestNum)
	  @isMatch = 1
	end
	combination(sum, arr[x + 1 .. arr.length])
  end
end
