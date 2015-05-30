class ChangeColumnName < ActiveRecord::Migration
  def change

		remove_column :categories, :type
        add_column :categories, :general_type, :string

  end
end
