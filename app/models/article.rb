class Article < ActiveRecord::Base

	validates :title, presence: true, uniqueness: true
	validates :content, presence: true

	belongs_to :developers
	belongs_to :city
	belongs_to :projects

	def self.search(query)
		where("title like ?", "%#{query}%")
	end

	scope :features, -> (name) { where("title like ?", "#{name}%")}

end
