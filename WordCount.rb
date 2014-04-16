#Using the Ruby language, have the function WordCount(str) take the str string parameter 
#being passed and return the number of words the string contains (ie. "Never eat shredded wheat" would return 4). 
#Words will be separated by single spaces. 
#Correct Sample Outputs:
#Input = "Hello World" Output = 2
#Input = "one 22 three" Output = 3
#http://coderbyte.com/

def WordCount(str)

  words = str.split(" ")
  return words.length 
         
end
