class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|

      t.string :name
      t.string :country
      t.boolean :listed
      
      t.timestamps null: false
    end
  end
end
