class AddPaperclipToRemainingModels < ActiveRecord::Migration
  def change

	add_attachment :cities, :image 
	add_attachment :projects, :image 
	add_attachment :users, :image 


  end
end
