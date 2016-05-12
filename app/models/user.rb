class User < ActiveRecord::Base



	validates :username, uniqueness: true,
                       length: { minimum: 4 }


    has_secure_password

end
