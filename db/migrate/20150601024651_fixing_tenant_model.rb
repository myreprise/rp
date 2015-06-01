class FixingTenantModel < ActiveRecord::Migration
  def change
       remove_column :tenants, :focus
       remove_column :tenants, :image_file_name
       remove_column :tenants, :image_content_type
       remove_column :tenants, :image_file_size

       add_column :tenants, :industry, :string
	   add_attachment :tenants, :image 
  end
end