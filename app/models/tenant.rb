class Tenant < ActiveRecord::Base

	belongs_to :project

	def to_s
		name
	end

end
