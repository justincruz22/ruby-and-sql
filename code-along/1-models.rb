# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/1-models.rb

# **************************
# Don't change or move
Company.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file
puts "There are now #{Company.all.count} companies."

# 2. create new companies
# the first way we can create new companies is we can put a hash. if we look at the schema.rb file (the makeup of the companies table), 
# you'll see that a company has name, url, city, state, slogan, and time stamps
# so if we want to create a new company, we need to give it those attributes
values = {name: "Apple, Inc.", url: "https://apple.com", city: "Cupertino", state: "CA"}
# this ^ is a hash. the reason we show a hash is that a database table is also key value pairs. records are pairs. 
# if you think about this hash vs a row in a table, they're pretty much the same
# ruby has is the same as database row

apple = Company.new(values)
# this ^ creates it in memory
apple.save
# this ^ commmits and saves to the database. this is running the insert statement for us
puts "There are now #{Company.all.count} companies."

values = {name: "Amazon.com, Inc.", url: "https://amazon.com", city: "Seattle", state: "WA"}
amazon = Company.new(values)
amazon.save
puts "There are now #{Company.all.count} companies."

# 3. query companies table
puts california_company = Company.where({state: "CA"})[0]
puts california_company.inspect
# this ^^^ returns a list of things. An Array. A list of things is an array. 

# 4. read column values from row
puts california_company.read_attribute(:url)
# ^^^^^ to ask for it to return a specific thing from the Company class (e.g., select URL), you use this
# the shortcut is.... below. both return the smae value.
puts california_company.url

# 5. update attribute value
california_company.write_attribute(:slogan, "Think different1.")
california_company.slogan = "Think different."
california_company.save

puts california_company.inspect
# you can write the attribute and set the value of it ^^ 

new_company = Company.new
new_company.name = "Tesla, Inc."
new_company.url = "https://tesla.com"
new_company.city = "Palo Alto"
new_company.state = "CA"
new_company.save

puts new_company.inspect
puts "There are now #{Company.all.count} companies."
