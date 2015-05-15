class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :content
      t.date :publication_date
      t.string :publication
      t.timestamps null: false
    end
  end
end
