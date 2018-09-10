# Vowels
#
# Write a method that will take a string and
# return an array of vowels used in that string.
#
# Difficulty:
# 4/10
#
# Example:
# count_vowels("The quick brown fox") should return ["e","u","i","o","o"]
# count_vowels("Hello World") should return ["e","o","o"]
#
# Check your solution by running the tests:
# ruby tests/04_vowels_test.rb
#
VOWELS = ["a","e","i","o","u"]
#v =~//

# First Implementation
def vowels(string)
  # Your code here
  text = string.split(//)
  temp = []
  VOWELS.each do |v|
    text.each do |c|
      if v == c 
        temp << c 
      end
    end
  end
  temp 
end
# Printing out matches
print vowels("staringou")

# Second Implementation
def vowels(string)
  matches = []
  string.each_char.with_index.select do |c, index| 
    if VOWELS.include?(c) 
      matches << c
    end
  end
  return matches
end
puts
print vowels("rohaneou").uniq

# Third Implementation
def vowels(string)
  matches = []
  string.split(//).each_with_index.select do |c, index| 
    if VOWELS.include?(c) 
      matches << [c, index]
    end
  end
  return matches
end

puts
print vowels("What on earth is happening nouw!")

# Forth Implementation
def vowels(string)
  matches = []
  string.split(//).each_with_index do |c, index| 
    if VOWELS.include?(c) 
      matches << [c, index]
    end
  end
  return matches
end

puts
print vowels("What on earth is happening you!")

# Fifth Implementation
def vowels(string)
  matches = []
  string.split(//).each do |c| 
    if VOWELS.include?(c) 
      matches << c
    end
  end
  return matches
end

puts
print vowels("The quick brown fox")
puts
print vowels("Hello World")

# SIXTH IMPLEMENTATON
class String

  # Checking for an integer number
  def is_i?
     /\A[-+]?\d+\z/ === self
  end

  # Searches and returns vowels in a string
  def vowels
    matches = []
    self.split(//).each do |c| 
      VOWELS.include?(c) ? (matches << c) : nil
    end
    matches
  end

end

text = 
"ollection of visual elements of a webssite or application including colors, imagesfonts that helpsdescribe feelings you want the experience of the site or  application to
in the user"

puts
print text.vowels

=begin
  MOOD BOARDS
  -----------
  - collection of visual elements of a webssite or application including colors, images, 
    fonts that helpsdescribe feelings you want the experience of the site or application to
    in the user
=end

=begin
  WIREFRAME - FRANKIE.COM.AU
  --------------------------
  - A two dimensional illustration of a page's interface
  - Specifically focuses on space allocation & prioritization of content, functionalities
  - 
=end