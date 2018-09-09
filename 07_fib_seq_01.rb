# A slightly different kind of challenge this morning.

# The Company has broken the keyboard on their one and only laptop, so can’t get this bit of code to run. What would the output of this code be (without running it on your own computer)? 

<<<<<<< HEAD
#  def fib(num)
#   if num < 2
#      num
#   else
#      fib(num-1) + fib(num-2)
#   end
# end
# puts fib(4)

#The output will be: 
#    [1, 2, (2+1), (3+2)] => [1, 2, 3, 5]
=======
 def fib(num_
  if num < 2
     num
  else
     fib(num-1) + fib(num-2)
  end
end
puts fib(4)

# It would output a syntax error due to the underscore instead of a close parenthesis on line 5.
>>>>>>> a66f15b560d5615b416b1045b016e9e610546faf
