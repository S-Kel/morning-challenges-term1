system 'clear'
def header 
    print " " + "No.".upcase.ljust(9)
    print " " + "Name".upcase.ljust(13)
    print " " + "Qnty".upcase.ljust(12)
    print " " + "Markup".upcase.ljust(13)
    print " " + "Sales".upcase.ljust(13) 
    print " " + "Profit".upcase.rjust(5) + "\n"
    puts  "-" * 71
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

drinks = [['cocktails', 3], ['waters', 2], ['beers', 6]]
#quit = ['q','quit']

print "Welcome, Kel. #{' '.ljust(4)}What would you like to order? Options(cocktails, beers, waters, show, quit) \n:> "
while true
    user_input = gets.chomp 
    order = user_input.downcase 
    system "clear"
    
    case order
    when drinks[0][0]
        drinks[0][1] += 1
    when drinks[1][0]
        drinks[1][1] += 1
    when drinks[2][0]
        drinks[2][1] += 1
    #when 'show'
        
    else
        puts "Invalid Selection..."
    end
    
    system 'clear'
    puts "#{' '.ljust(20) }The final drinks order include:".upcase

    drinks.each_with_index do |drink, index|
      print "#{' '.ljust(20)} [#{index + 1}]"          
      drink.each do |drink_item|
        formater = 0
        case drink_item 
        when 'beers'
             formater = 9
        when 'cocktails'  
            formater = drink[0].length - 4
        when 'waters'     
            formater = 8
        end
        print " #{drink_item} #{' '.rjust(formater)}".upcase
      end
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
drinks.each_with_index do |drink, i|
    print " #{i + 1} #{' '.ljust(6)}"  
    formater = 0
    drink.each do |drink_item|        
        case drink_item 
        when 'beers'      
            formater = 10
        when 'cocktails'  
            formater = drink[0].length - 3
        when 'waters'     
            formater = 9
        end
    end
    total_makes  = (make_price[i]  * drink[1]).to_f.round(2)
    total_sales  = (sales_price[i] * drink[1]).to_f.round(2)

    print " #{drink[0].upcase} #{' '.rjust(formater)} #{drink[1]}" +
          "#{' '.rjust(9)} $#{total_makes} #{' '.rjust(9)} $#{total_sales}" +
          " #{' '.rjust(5)} $#{total_sales - total_makes}"
    puts ""
    profits += (total_sales - total_makes).to_f
end
print  " " * 63 + "-"*8
print "\n   #{' '.ljust(7)}Total".upcase + "#{' '.rjust(49)} $#{profits}\n"
print  " " * 63 + "-"*8
puts   ""
puts   "-" * 71


# Ctrl + / to get block comments