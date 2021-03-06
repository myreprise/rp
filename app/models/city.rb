class City < ActiveRecord::Base

	has_attached_file :image, styles: { small: "64x64", med: "200x200", large: "600x600" }
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	has_many :categories, :through => :cfacts, :dependent => :destroy
	has_many :cfacts, :dependent => :destroy

	has_many :projects
	has_many :developers
	has_many :districts, :dependent => :destroy

	accepts_nested_attributes_for :cfacts, reject_if: proc { |attributes| attributes['timeperiod'].blank? },
											allow_destroy: true


	accepts_nested_attributes_for :districts, 
								  reject_if: proc { |attributes| attributes['name'].blank? },
								  allow_destroy: true

	validates_presence_of :name
	validates :name, length: { minimum: 2 }
	
	def to_s
		name
	end

end
