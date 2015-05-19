class ChangeNameData < ActiveRecord::Migration
  def change

     rename_table :re_data, :realestate

  end
end
