class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.string :name
      t.string :focus
      t.integer :project_id
      t.string :country
      t.string   :image_file_name
      t.string   :image_content_type
      t.integer  :image_file_size
      t.timestamps null: false
    end
  end
end
