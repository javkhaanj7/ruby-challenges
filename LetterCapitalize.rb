#Using the Ruby language, have the function LetterCapitalize(str) take the str parameter 
#being passed and capitalize the first letter of each word. Words will be separated by only one space. 
#Correct Sample Outputs:
#Input = "hello world" Output = "Hello World"
#Input = "i ran there" Output = "I Ran There"
#http://coderbyte.com/

def LetterCapitalize(str)

  capitalized = ''
  doCap = 1
  str.each_char do |x|
    if doCap == 1
      x = x.upcase
    end
    if(x == ' ')
      doCap = 1
    else
      doCap = 0
    end
    capitalized = capitalized + x
  end
  
  return capitalized 
         
end
