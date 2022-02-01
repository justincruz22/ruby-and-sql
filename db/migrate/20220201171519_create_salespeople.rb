class CreateSalespeople < ActiveRecord::Migration[7.0]
  def change
    create_table :salespeople do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.timestamps
    end
  end
end

# create strings for this new file. look at the others and you'll see similar t.strings.
# creating string (non-numeric types) for the database
# we have modified the migration file, but if we look at the schema, we won't see anything
# we need to run (migrate) it. so. wew use "rails db:migrate". it will look for databases that have not been migrated. 
# after you do that, you'll see that there is now a salespeople table in the schema.