class District < ActiveRecord::Base

	validates_presence_of :name

	belongs_to :city
	has_many :projects
	

	def to_s
		name
	end

end