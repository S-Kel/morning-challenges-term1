# Unique
#
# Ruby has a handy array.unique helper which removes
# duplicates. Imlpement your own version of the helper,
# without using .unique.
#
# Difficulty:
# 5/10
#
# Example:
# unique([1,2,3,3]) should return [1,2,3]
# unique(["tom", "tom", "tom"]) should return ["tom"]
#
# Hints:
# A hash could be helpful in your solution.
#
# Check your solution by running the tests:
# ruby tests/09_unique_test.rb
#
#def unique (mylist)
#   # Your code here
#   list = [];
#   mylist.each_with_index do|num, i|
#     if num != mylist[i+1]
#       list.push(num)
#     end
#   end
#   return list
# end

<<<<<<< HEAD
class Unique
  def self.unique(mylist)
    mylist.each_with_object([]) do |e, arr|
      arr << e unless arr.include?(e)
    end
  end   
=======
def unique (mylist)
  hash = {}
  mylist.each { |x| hash[x] = true }
  hash.keys
>>>>>>> b028df5d644e116007105a13b9522c8e1282f993
end

#x = ["kel","tom", "ran", "tom","ran","kel", "tom", "kel"]
p Unique.unique([1,2,3,3])
p Unique.unique(["tom", "tom", "tom"])
p Unique.unique(["kel","tom", "ran", "tom","ran","kel", "tom", "kel"])
