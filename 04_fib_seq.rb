# 1. sit beside someone new, at a new spot :slightly_smiling_face:

# 2. There is an odd employee at The Company who needs some code written that will provide them with the first 100 numbers of the Fibonacci sequence ….. (no one really knows why the odd employee needs this information - or why they can’t work it out themselves - but Monday mornings can be strange).
<<<<<<< HEAD
# index = 0
# fibs = [5,10]
# while index < FIB_NUM                                  # Loop through fib number of times
#   sum =  fibs[index] + fibs[index + 1]
#   fibs.push(sum)                                   # Store sum of previous and current in current index of array
#   index += 1
# end
# puts ""
# puts fibs.inspect                                  # Display fib object
#------------------------------------------------------------------------------------------------------------------

fib     = [5,10]                                      # Initial fibinacci series
FIB_NUM = 10                                          # Fib numbers

FIB_NUM.times do |index|                              # Loop through fib number of times
  sum =  fib[index] + fib[index + 1]
  fib.push(sum)                                       # Store sum of previous and current in current index of array
end
puts ""
puts fib.inspect                                      # Display fib object

=======

# Generate and return the first 'count' values in the Fibonacci sequence
def fib(count)
    fib_sequence = [1, 1]
    count.times do |n|
        fib_sequence << fib_sequence[n] + fib_sequence[n+1]
    end
    return fib_sequence
end

puts fib(100)
>>>>>>> a66f15b560d5615b416b1045b016e9e610546faf
