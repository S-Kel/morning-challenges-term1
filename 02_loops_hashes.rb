system 'clear'
def header 
    print " " + "No.".upcase.ljust(9)
    print " " + "Name".upcase.ljust(13)
    print " " + "Qnty".upcase.ljust(12)
    print " " + "Markup".upcase.ljust(15)
    print " " + "Sales".upcase.ljust(13) 
    print " " + "Profit".upcase.rjust(5) + "\n"
    puts  "-" * 74
end

#1. - create a well named variable that contains the amount of time it took you to get to class
#2. - create a complete sentence  that lets us know how you got to class and how long it took
#3. - print this complete sentence

trip_time = [1, 30]
sentence = "It took #{trip_time[0]} hour and #{trip_time[1]} to get to class."
puts sentence.upcase


# you are working at a bar where you have a current backlog of drinks to make:
# 3 cocktails
# 2 waters
# and
# 6 beers

# write a program that asks the customer for their order.
# if they order a cocktail, add one to the number of cocktails you need to make,
# if they order a water, add one to the number of waters you need to make,
# if they order a beer, add one to the number of beers you need to pour

# print the final drinks order so you know what to make

#drinks = [['cocktails', 3], ['waters', 2], ['beers', 6]]
drinks = {cocktails: 3, waters: 2, beers: 6}
#quit = ['q','quit']

print "Welcome, Kel. #{' '.ljust(4)}What would you like to order? Options(cocktails, beers, waters, show, quit) \n:> "
while true
    user_input = gets.chomp 
    order = user_input.downcase 
    system "clear"
    
    case order
    when "cocktails"
        drinks[:cocktails] += 1
    when "beers"
        drinks[:beers] += 1
    when "waters"
        drinks[:waters] += 1
    #when 'show'
        
    else
        puts "Invalid Selection..."
    end
    
    puts

    system 'clear'
    puts "#{' '.ljust(20) }The final drinks order include:".upcase
    index = 0
    puts "#{' '.ljust(20)} No. #{' '.rjust(2)}  Drinks #{' '.rjust(6)} Qnty"
    drinks.each do |drink, num|
        formater = 0

        case drink.to_s
        when 'beers'
            formater = 4
        when 'cocktails'  
            formater = 0
        when 'waters'     
            formater = 3
        end

        index +=1
        print "#{' '.ljust(20)} #{index} #{' '.ljust(5)} #{drink.to_s.capitalize }"
        print "#{' '.rjust(formater + 5)} [#{num + 1}]"  

        puts ""
    end 
    
    print "#{' '.ljust(4)}What would you like to order? Options(cocktails, beers, waters, show, quit)\n#{' '.ljust(4)}:> "
    
    break if ['q','quit'].include?(user_input.downcase)
end

# ****
# cocktails sell for $22, and cost $8 to make
# beer sell for $12, and cost $3 to pour
# water sell for $6, and cost $0.15 to make

# print out the total profit for the orders you have
puts ""
make_price  = [8, 3, 0.15]
sales_price = [22, 12, 6]
profits    = 0.0
# Print Table header
header()
index = 0
drinks.each do |drink, num|
    print " #{index + 1} #{' '.ljust(6)}"  
    formater = 0
    formatr2 = 0
    # drink.each do |drink_item|        
        case drink.to_s 
        when 'beers'      
            formater = 10
            formatr2 = 9
        when 'cocktails'  
            formater = drink.length - 3
            formatr2 = 8
        when 'waters'     
            formater = 9
            formatr2 = 9
        end
    # end
    total_makes  = (make_price[index]  * num.to_f).round(2)
    total_sales  = (sales_price[index] * num.to_f).round(2)
    index += 1
    print " #{drink.upcase} #{' '.rjust(formater)} #{num}" +
          "#{' '.rjust(formatr2)} $#{ '%.2f' % total_makes} #{' '.rjust(9)} $#{ '%.2f' % total_sales}" +
          " #{' '.rjust(5)} $#{ '%.2f' % (total_sales - total_makes)}"
    puts ""
    profits += (total_sales - total_makes).to_f
end
print  " " * 65 + "-"*9
print "\n   #{' '.ljust(7)}Total".upcase +  "#{' '.rjust(51)} $#{ '%.2f' % profits}\n"
print  " " * 65 + "-"*9
puts   ""
puts   "-" * 74

#puts '%.2f' % 3.14159
# Ctrl + / to get block comments