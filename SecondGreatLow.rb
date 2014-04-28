#Using the Ruby language, have the function SecondGreatLow(arr) take the array of numbers stored in arr 
#and return the second lowest and second greatest numbers, respectively, separated by a space. 
#For example: if arr contains [7, 7, 12, 98, 106] the output should be 12 98. The array will not be empty 
#and will contain at least 2 numbers. It can get tricky if there's just two numbers! 
#Correct Sample Outputs:
#Input = 1, 42, 42, 180 Output = "42 42"
#Input = 4, 90 Output = "90 4"
#http://coderbyte.com/

def SecondGreatLow(arr)

  arr.each_index do |i|
    (arr.length - i - 1).times do |j|
      if arr[j] > arr[j + 1]
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
      end
    end
  end
  
  max = arr[arr.length - 1]
  min = arr[0]
  secondLowest = min
  arr.each_index do |i|    
    if(arr[i] > secondLowest)
      secondLowest = arr[i]
      break
    end
  end
  
  secondGreatest = max 
  (arr.length - 1).downto(0) do |i|
    if(secondGreatest > arr[i])      
      secondGreatest = arr[i]
      break
    end
  end
  
  return "#{secondLowest} #{secondGreatest}" 
         
end
