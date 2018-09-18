# check which version of ruby you have installed (if it isn’t 2.4.1, then please see a teacher)

# from the command line, create a ruby folder inside of your apps folder (if you haven’t already done so)
# create a file inside the ruby folder called ‘strings’ with the ruby extension
system "clear"

# Constant to store objects
DECADE             = 10
MY_AGE             = 35
DAYS_PER_YEAR      = 365
HOURS_PER_DAY      = 24
MINUTES_PER_HOUR   = 60 
SECONDS_PER_MINUTE = 60 


# In IRB calculate — 
#     1. How many hours are in a year.
#     2. How many minutes are in a decade?
#     3. How many seconds old are you?
puts "PART 1 ......................................."
total_hours_per_year = DAYS_PER_YEAR * HOURS_PER_DAY
puts "  01 There are #{total_hours_per_year} Hours in a Year"
total_minutes_per_decade = total_hours_per_year * MINUTES_PER_HOUR * DECADE
puts "  02 There are #{total_minutes_per_decade} Minutes in a Decade"
total_seconds_in_myage = total_hours_per_year * MINUTES_PER_HOUR * SECONDS_PER_MINUTE * MY_AGE
puts "  03 There are #{total_seconds_in_myage} Seconds in my Age"

# What do you think happens when you combine the following floats and integers?
# Is the result a float or an integer?
# Try computing these in irb —
#     1. 3.0 / 2
#     2. 3 / 2.0
#     3. 4 ** 2.0
#     4. 4.1 % 2
puts "PART 2 ......................................."
result = 3.0/2
puts "  01> 3.0/2 = #{result}"
result = 3/2.0
puts "  02> 3/2.0 = #{result}"
result = 4**2.0
puts "  03> 4**2.0 = #{result}"
result = 4.1 % 2
puts "  04> 4.1 % 2 = #{result}"


# Output to screen
puts "PART 3 ......................................."
puts "Hello world!"
puts "PART 4 ......................................."
name = "Amen Kel Gatwech"
puts "My name is #{name}"
