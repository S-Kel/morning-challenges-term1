# The Company is currently wanting to produce another 500 units of product sku 276834, which is a lamp with a circular base. Unfortunately, a staff member forgot to order the plywood to make the base and didn’t account for the cost of this wood.
# Plywood can be purchased in 1200 X 2400 mm sheets at a cost of $28.47 per sheet.
# Each lamp base is a circle with a diameter of 320mm. 
# What is the total cost of ordering the plywood for the bases, and how much plywood is wasted?

#1. Number of sku 500 units
#2. sku 276834 is a laamp with circular base
#3. Plywood can be purchased in 1200 x 2400 at $28.47 per sheet
#4. Lamp base diameter is 320m

# Requiring files
require '~/Projects/ruby/wcolorize'

# Math PI
PI = Math::PI 

# Hash or product details
sku_product = [{"Lamp Base"     => { diameter: "320 mm"},
                "Unit Quantity" => { quantity: "500 units"},                
                "Plywood Sheet" => { width:    "1200 mm", height: "2400 mm", price: "$ 28.47"}
              }]


# Extracting data
sh_price = sku_product[0]["Plywood Sheet"][:price].split[1].to_f
width    = sku_product[0]["Plywood Sheet"][:width].split[0].to_i
height   = sku_product[0]["Plywood Sheet"][:height].split[0].to_i  
diameter = sku_product[0]["Lamp Base"][:diameter].split[0].to_i
quantity = sku_product[0]["Unit Quantity"][:quantity].split[0].to_i

#Calculating the number of rows and columns of bases in a sheet and the total number of bases per sheet  
rows   = (width/diameter)    
cols   = (height/diameter)
radius = diameter/2.0

bases_per_sheet = rows * cols 
num_of_sheets   = (quantity/bases_per_sheet.to_f).ceil 

# What is the total cost of ordering the plywood for the bases
total_cost = num_of_sheets * sh_price

# How much plywood is wasted? Area of Plywood sheets - Total areas of lamp bases
total_pwd_area = width * height * num_of_sheets
wasted_plywood = (total_pwd_area - PI * radius * radius * quantity).ceil 

# Dispaly the results 
system "clear"
puts "#{colorize(" Product Summary: ".upcase , $font_colors[:yellow], $bg_colors[:red])}" + 
     "\n" + 
     "1. #{bases_per_sheet} lamp bases/units will be produced per sheet\n" + 
     "2. #{num_of_sheets} sheets of Plywood will be required \n" +
     "3. $#{total_cost} will be needed.\n" +
     "4. A total of #{wasted_plywood} sqmm or " + 
     "#{'%.1f'% (100*wasted_plywood/total_pwd_area.to_f)}% of Plywood will be wasted."
