class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.numeric :id
      t.string :created_at
      t.string :notes
      t.timestamps
    end
  end
end
