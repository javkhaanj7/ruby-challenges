#Using the Ruby language, have the function VowelCount(str) take the str string parameter 
#being passed and return the number of vowels the string contains (ie. "All cows eat grass" would return 5). 
#Do not count y as a vowel for this challenge.
#Correct Sample Outputs:
#Input = "hello" Output = 2
#Input = "coderbyte" Output = 3
#http://coderbyte.com/

def VowelCount(str)

  counter = 0
  str.each_char do |x|
    if(x.match(/[aieou]/))
      counter += 1
    end
  end
  return counter
         
end
