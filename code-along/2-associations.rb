# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-associations.rb

# 1. Query all of the contacts at Apple Inc.
apple = Company.where({name: "Apple, Inc."})[0]
puts "Contacts at Apple, Inc."
for contact in apple.contacts
    puts "#{contact.first_name} #{contact.last_name} - #{contact.company.name}"
end


# 2. add association to contacts in Company model
# rails knows you want to have associations. companies and contacts are related. companies have many contacts. contacts belong to a company.
# company has many contacts.

# 3. add association to company in Contact model
