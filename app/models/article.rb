class Article < ActiveRecord::Base

	belongs_to :developers
	belongs_to :city
	belongs_to :projects

end
