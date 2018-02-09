require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes
  ### -- apartment data structure: each hash has an id, address, monthly rent, and square ft.
  ### -- tenants data structure: each hash has an id, name, age, and an apartment id relative to the apartment they are renting.

# Use enumerables to -
#   # Print all the addresses for the apartments
# puts "** ADDRESSES:"
# apartments.map do |apartment| 
#   puts apartment[:address] 
# end
#   # Print all the names for tenants
# puts "** TENANTS:"
# tenants.map do |tenant|
#   puts tenant[:name]
# end
#   # Print only apartments that are less then 700 in rent
# puts "** Less than $700:"
# apartments.map do |apartment|
#   if apartment[:monthly_rent] < 700
#     puts apartment
#   end
# end

#   # Print only tenants that are over the age of 44
# puts "** Age over 44:"
# tenants.map do |tenant|
#   if tenant[:age] > 44
#     puts tenant
#   end
# end

#   # Print only tenants that have an apartment id of 1
# puts "** Residents of apt ID #1"
# tenants.map do |tenant|
#   if tenant[:apartment_id] == 1
#     puts tenant
#   end
# end

#   # Print all the tenants in order from youngest to oldest
# puts "** Tenants - sorted by age:"
# puts tenants.sort_by { |tenant| tenant[:age] }

#   # Print the names of all the tenants alphabetically
# puts "** Tenants - sorted alphabetically:"
# puts tenants.sort_by { |tenant| tenant[:name] }


### part 2:


input = ""

puts "Type 'Apartments' to view all locations, 'Tenants' to view all tenants."
puts "OPTIONS: 1 - Print all addresses"
input = gets.chomp

if input == "Apartments"
  puts "All Apartments"
  puts apartments
end

if input == "Tenants"
  puts "All Tenants"
  puts tenants
end

# Use enumerables to -

if input == "1"
    # Print all the addresses for the apartments
  puts "** ADDRESSES:"
  apartments.map do |apartment| 
    puts apartment[:address] 
  end
end

if input == "2"  
    # Print all the names for tenants
  puts "** TENANTS:"
  tenants.map do |tenant|
    puts tenant[:name]
  end
end

if input == "3"  
    # Print only apartments that are less then 700 in rent
  puts "** Less than $700:"
  apartments.map do |apartment|
    if apartment[:monthly_rent] < 700
      puts apartment
    end
  end
end

if input == "4"    
    # Print only tenants that are over the age of 44
  puts "** Age over 44:"
  tenants.map do |tenant|
    if tenant[:age] > 44
      puts tenant
    end
  end
end

if input == "5"  
    # Print only tenants that have an apartment id of 1
  puts "** Residents of apt ID #1"
  tenants.map do |tenant|
    if tenant[:apartment_id] == 1
      puts tenant
    end
  end
end

if input == "6"  
    # Print all the tenants in order from youngest to oldest
  puts "** Tenants - sorted by age:"
  puts tenants.sort_by { |tenant| tenant[:age] }
end

if input == "7"  
    # Print the names of all the tenants alphabetically
  puts "** Tenants - sorted alphabetically:"
  puts tenants.sort_by { |tenant| tenant[:name] }
end



  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants


