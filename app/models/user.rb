class User < ActiveRecord::Base

	has_secure_password

	validates :name, presence: true
	validates :email, presence: true, uniqueness: true,
			  format: {
			  	with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
			  }

	validates 

	def to_s
		"#{name} #{email}"
	end

end
