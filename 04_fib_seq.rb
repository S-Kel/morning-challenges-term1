# 1. sit beside someone new, at a new spot :slightly_smiling_face:

# 2. There is an odd employee at The Company who needs some code written that will provide them with the first 100 numbers of the Fibonacci sequence ….. (no one really knows why the odd employee needs this information - or why they can’t work it out themselves - but Monday mornings can be strange).


fib     = [0,1]                                       # Initial fibinacci series
FIB_NUM = 10                                          # Fib numbers

FIB_NUM.times do |index|                              # Loop through fib number of times
  sum = fib[index + 1] + fib[index]
  fib.push(sum)                                       # Store sum of previous and current in current index of array
end
puts ""
puts fib.inspect                                      # Display fib object