#Using the Ruby language, have the function ArithGeo(arr) take the array of numbers stored in arr 
#and return the string "Arithmetic" if the sequence follows an arithmetic pattern or return "Geometric" 
#if it follows a geometric pattern. If the sequence doesn't follow either pattern return -1. An arithmetic 
#sequence is one where the difference between each of the numbers is consistent, where as in a geometric 
#sequence, each term after the first is multiplied by some constant or common ratio. Arithmetic example: 
#[2, 4, 6, 8] and Geometric example: [2, 6, 18, 54]. Negative numbers may be entered as parameters, 0 will 
#not be entered, and no array will contain all the same elements. 
#Correct Sample Outputs:
#Input = 5,10,15 Output = "Arithmetic"
#Input = 2,4,16,24 Output = -1
#http://coderbyte.com/

def ArithGeo(arr)

  diff1 = []
  diff2 = []
  arr.each_index do |x|
    if(x + 1 < arr.length)
      diff1 << arr[x + 1] - arr[x]
      diff2 << arr[x + 1] / arr[x]      
    end
  end

  isArith = true
  diff1.each_index do |x|
    if(diff1[0] != diff1[x])
      isArith = false
      break
    end
  end

  if(isArith)
    return "Arithmetic"
  elsif
    isGeo = true
    diff2.each_index do |x|
      if(diff2[0] != diff2[x])
        isGeo = false
        break
      end
    end
    if(isGeo)
      return "Geometric"
    end
  end

  return -1 
         
end
