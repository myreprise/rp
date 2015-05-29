class District < ActiveRecord::Base

	belongs_to :city
	has_many :projects
	

	def to_s
		name
	end

end