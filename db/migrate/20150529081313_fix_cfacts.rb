class FixCfacts < ActiveRecord::Migration
  def change

		remove_column :cfacts, :cfacts_id
        add_column :cfacts, :category_id, :integer

  end
end
