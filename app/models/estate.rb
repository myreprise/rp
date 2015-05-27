class Estate < ActiveRecord::Base

	belongs_to :city

	#validates_uniqueness_of :timeperiod

end
