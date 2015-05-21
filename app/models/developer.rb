class Developer < ActiveRecord::Base

	has_attached_file :image, styles: { small: "64x64", med: "200x200", large: "400x400" }
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


	has_many :projects
	belongs_to :city

end