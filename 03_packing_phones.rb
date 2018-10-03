# 1. If you're sitting next to the same person you sat next
#    to yesterday, go sit next to someone else.
#
# 2. A business called “The Company” created a new phone called 
#    the companyPhone that needs packing to send away for sale. 
#
#    The companyPhone in its pretty new packaging 
#    (rectangular prism) measures as follows: 
#       width: 5cm
#       length: 7.4cm 
#       depth: 4cm 
#
#    The Company need to know how many of the phones in
#    the new packaging can fit into a box that measures:
#       width: 32cm
#       length: 43cm 
#       height: 22.1cm 
#
#    Think about writing some pseudo code first that steps 
#    through all the commands you need to write. 
#
#    Keep it as simple as you can.

<<<<<<< HEAD
#1. store phone dimensions in an array
#2. store packaging dimensions in an array
#3. permut the phone array to find different orientation and then
#4. divide packaging each dimension by phone dimension and convert to integer
#4. print the results

phone_dimensions  = [5.0, 7.4, 4.0]
box_dimension     = [32.0, 43.0, 22.1]
max_phones = 0
# phones_num_per_box   = (packaging_dimension[0]/phone_dimensions[0]).to_i *
#                        (packaging_dimension[1]/phone_dimensions[1]).to_i *
#                        (packaging_dimension[2]/phone_dimensions[2]).to_i

phone_dimensions.permutation do |orientation|
  print "#{orientation} \n"
  num_phones = (box_dimension[0]/orientation[0]).to_i *                       
               (box_dimension[1]/orientation[1]).to_i *
               (box_dimension[2]/orientation[2]).to_i
  
  max_phones = max_phones >  num_phones ? max_phones : num_phones
end

puts "#{ max_phones} phones will fit in a [#{box_dimension[0]}cm x #{box_dimension[1]}cm x #{box_dimension[2]}cm] box."
=======
phone = [5, 7.4, 4]
box = [32, 43, 22.1]

max_phones = 0
phone.permutation do |orient|
    print orient
    puts
    num_phones = (box[0] / orient[0]).to_i * (box[1] / orient[1]).to_i * (box[2] / orient[2]).to_i
    max_phones = num_phones if num_phones > max_phones
end

puts max_phones
>>>>>>> a66f15b560d5615b416b1045b016e9e610546faf
