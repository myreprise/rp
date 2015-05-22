class ChangeRealestateName < ActiveRecord::Migration
  def change

     rename_table :realestate, :estates

  end
end
