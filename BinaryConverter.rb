#Using the Ruby language, have the function BinaryConverter(str) return the decimal form of the 
#binary value. For example: if 101 is passed return 5, or if 1000 is passed return 8. 
#Correct Sample Outputs:
#Input = "100101" Output = "37"
#Input = "011" Output = "3"
#http://coderbyte.com/

def BinaryConverter(str)

  return str.to_i(2) 
         
end
